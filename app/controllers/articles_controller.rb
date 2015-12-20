class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [ :edit, :update, :destroy]
  # GET /articles
  # GET /articles.json
  def index
    @articles      = Article.text_search(params[:query])
    respond_to do |format|
      format.html {}

      format.pdf {
        @pdf = true
        html = render_to_string(:layout => "plain", :action => 'pdf',  :formats => :html)
        kit  = PDFKit.new(html, :margin_right => '1.5in', :margin_left => '0.75in')
        kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/pdf.css"
        send_data kit.to_pdf, :filename => "Bibliocloud Manual #{Time.now}.pdf", :type => 'application/pdf'
      }
    end
  end

  def pdf
    @articles      = Article.text_search(params[:query])
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @article }
      else
        format.html { render action: 'new' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to(@article, :notice => 'article was successfully updated.') }
        format.json { respond_with_bip(@article) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@article) }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:section_id, :title, :body, :user_id, :what_we_learn, :sequence)
    end
end
