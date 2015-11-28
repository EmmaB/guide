class Section < ActiveRecord::Base
  has_many :articles
  has_many :sections
end

__END__

section_1   = Section.where(:area => "Workshops"                      , :name  => "Basics").first_or_create
section_2   = Section.where(:name  => "Start here"                    , :section_id => section_1.id).first_or_create
article_12  = Article.where(:title => "Why Bibliocloud"               , :section_id => section_2.id).first_or_create
article_13  = Article.where(:title => "Introduction"                  , :section_id => section_2.id).first_or_create

section_3   = Section.where(:name  => "Get organised"                 , :section_id => section_1.id).first_or_create
article_13  = Article.where(:title => "Title management"              , :section_id => section_3.id).first_or_create
article_14  = Article.where(:title => "Add your first new title"      , :section_id => section_3.id).first_or_create
article_15  = Article.where(:title => "Working as a team"             , :section_id => section_3.id).first_or_create
article_16  = Article.where(:title => "Customize Bibliocloud"         , :section_id => section_3.id).first_or_create

section_4   = Section.where(:area => "Workshops"                       , :name  => "Do more").first_or_create

section_5   = Section.where(:name  => "Onboard my team"                   , :section_id => section_4.id).first_or_create
article_1   = Article.where(:title => "Introduce Bibliocloud to your team", :section_id => section_5.id).first_or_create
article_2   = Article.where(:title => "Team conventions"                  , :section_id => section_5.id).first_or_create

section_6   = Section.where(:name  => "Use Bibliocloud for"           , :section_id => section_4.id).first_or_create
article_9   = Article.where(:title => "Meetings & agendas"            , :section_id => section_6.id).first_or_create
article_10  = Article.where(:title => "Ideas and brainstorms"         , :section_id => section_6.id).first_or_create
article_11  = Article.where(:title => "Pipelines"                     , :section_id => section_6.id).first_or_create

section_a1   = Section.where(:area => "Resources"                     , :name  => "Help"  ).first_or_create

section_a2   = Section.where(:area => "Resources"                     , :name  => "Videos"  ).first_or_create
