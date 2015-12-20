# -*- encoding : utf-8 -*-
PDFKit.configure do |config|
  config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s if Rails.env.production?
  config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s if Rails.env.staging?

  # config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s if Rails.env.development?
  # if RAILS_ENV == 'production'
  config.verbose = true
end

if Rails.env.production?
  font_dir = File.join(Dir.home, ".fonts")
  Dir.mkdir(font_dir) unless Dir.exists?(font_dir)

  Dir.glob(Rails.root.join("vendor","assets","fonts", "*")).each do |font|
    target = File.join(font_dir, File.basename(font))
    File.symlink(font, target) unless File.exists?(target)
  end
end
