class Section < ActiveRecord::Base
  has_many :articles
  has_many :sections
end

__END__

section_1   = Section.where(:area  => "Workshops"                         , :name  => "Basics").first_or_create
section_2   = Section.where(:name  => "Start here"                        , :section_id => section_1.id).first_or_create
              Article.where(:title => "Introduction"                      , :section_id => section_2.id).first_or_create
              Article.where(:title => "Bibliocloud replaces..."           , :section_id => section_2.id).first_or_create

section_3   = Section.where(:name  => "Get organised"                     , :section_id => section_1.id).first_or_create
              Article.where(:title => "Title management"                  , :section_id => section_3.id).first_or_create
              Article.where(:title => "Add your first title"              , :section_id => section_3.id).first_or_create
              Article.where(:title => "Working as a team"                 , :section_id => section_3.id).first_or_create
              Article.where(:title => "Customize Bibliocloud"             , :section_id => section_3.id).first_or_create

section_3a  = Section.where(:name  => "Use fewer spreadsheets"            , :section_id => section_1.id).first_or_create
              Article.where(:title => "Your publishing list"              , :section_id => section_3a.id).first_or_create
              Article.where(:title => "Manage your schedules"             , :section_id => section_3a.id).first_or_create
              Article.where(:title => "Are you profitable?"               , :section_id => section_3a.id).first_or_create
              Article.where(:title => "Rights, royalties & permissions"   , :section_id => section_3a.id).first_or_create

section_3c  = Section.where(:name  => "Copy & paste less"                 , :section_id => section_1.id).first_or_create
              Article.where(:title => "Create AIs & flyers"               , :section_id => section_3c.id).first_or_create
              Article.where(:title => "Create catalogues"                 , :section_id => section_3c.id).first_or_create
              Article.where(:title => "Custom reports"                    , :section_id => section_3c.id).first_or_create

section_4   = Section.where(:area  => "Workshops"                         , :name  => "Do more").first_or_create

section_5   = Section.where(:name  => "Onboard my team"                   , :section_id => section_4.id).first_or_create
              Article.where(:title => "Introduce Bibliocloud to your team", :section_id => section_5.id).first_or_create
              Article.where(:title => "Sort out your workflow"            , :section_id => section_5.id).first_or_create
              Article.where(:title => "Your legacy data"                  , :section_id => section_5.id).first_or_create

section_6   = Section.where(:name  => "Use Bibliocloud for"               , :section_id => section_4.id).first_or_create
              Article.where(:title => "Meetings & agendas"                , :section_id => section_6.id).first_or_create
              Article.where(:title => "Bibliocloud as a calendar"         , :section_id => section_6.id).first_or_create
              Article.where(:title => "Bibliocloud as a CRM"              , :section_id => section_6.id).first_or_create
              Article.where(:title => "Bibliocloud as a DAM"              , :section_id => section_6.id).first_or_create
              Article.where(:title => "10 uses for pipelines"             , :section_id => section_6.id).first_or_create
              Article.where(:title => "10 uses for collections"           , :section_id => section_6.id).first_or_create
              Article.where(:title => "Feed your website"                 , :section_id => section_6.id).first_or_create

section_3b  = Section.where(:name  => "Send fewer emails"                 , :section_id => section_4.id).first_or_create
              Article.where(:title => "Briefings"                         , :section_id => section_3b.id).first_or_create
              Article.where(:title => "Notifications"                     , :section_id => section_3b.id).first_or_create
              Article.where(:title => "How to manage issues"              , :section_id => section_3b.id).first_or_create
              Article.where(:title => "Manage your printers"              , :section_id => section_3b.id).first_or_create

section_3d  = Section.where(:name  => "Fill in fewer forms"               , :section_id => section_4.id).first_or_create
              Article.where(:title => "Share your metadata"               , :section_id => section_3d.id).first_or_create

section_7   = Section.where(:name  => "Get insights"                      , :section_id => section_4.id).first_or_create
              Article.where(:title => "Check Amazon data"                 , :section_id => section_7.id).first_or_create
              Article.where(:title => "Check Google books data"           , :section_id => section_7.id).first_or_create
              Article.where(:title => "Exception reports"                 , :section_id => section_7.id).first_or_create
              Article.where(:title => "Forecasting"                       , :section_id => section_7.id).first_or_create

section_7a  = Section.where(:name  => "Save time"                         , :section_id => section_4.id).first_or_create
              Article.where(:title => "5 power features"                  , :section_id => section_7a.id).first_or_create
              Article.where(:title => "Use templates"                     , :section_id => section_7a.id).first_or_create
              Article.where(:title => "What you've learned"               , :section_id => section_7a.id).first_or_create

section_1   = Section.where(:area => "Resources"                         , :name  => "Help"    ).first_or_create
  section_2   = Section.where(:name  => "Before you buy"                    , :section_id => section_1.id).first_or_create
                Article.where(:title => "About our company"                 , :section_id => section_2.id).first_or_create
                Article.where(:title => "About Bibliocloud"                 , :section_id => section_2.id).first_or_create
                Article.where(:title => "About our services"                , :section_id => section_2.id).first_or_create
                Article.where(:title => "Why Bibliocloud?"                  , :section_id => section_2.id).first_or_create

  section_2   = Section.where(:name  => "Getting started"                    , :section_id => section_1.id).first_or_create
                Article.where(:title => "Welcome"                          , :section_id => section_2.id).first_or_create
                Article.where(:title => "Bibliocloud's golden rules"       , :section_id => section_2.id).first_or_create
                Article.where(:title => "Create an account"                , :section_id => section_2.id).first_or_create
                Article.where(:title => "Signing in and out"               , :section_id => section_2.id).first_or_create
                Article.where(:title => "Navigation"                       , :section_id => section_2.id).first_or_create
                Article.where(:title => "Search tools"                     , :section_id => section_2.id).first_or_create
                Article.where(:title => "Data transfer"                    , :section_id => section_2.id).first_or_create

  section_3   = Section.where(:name  => "Implementation"                       , :section_id => section_1.id).first_or_create
                Article.where(:title => "Considerations"                     , :section_id => section_3.id).first_or_create
                Article.where(:title => "Vanilla implementation plan"        , :section_id => section_3.id).first_or_create

  section_3   = Section.where(:name  => "Lifecycle"                          , :section_id => section_1.id).first_or_create
                Article.where(:title => "Capture the concept"                , :section_id => section_3.id).first_or_create
                Article.where(:title => "Approval"                           , :section_id => section_3.id).first_or_create
                Article.where(:title => "Publication"                        , :section_id => section_3.id).first_or_create
                Article.where(:title => "Get data out there"                 , :section_id => section_3.id).first_or_create
                Article.where(:title => "Satisfy your authors"               , :section_id => section_3.id).first_or_create
                Article.where(:title => "Understand your business"           , :section_id => section_3.id).first_or_create

  section_3   = Section.where(:name  => "Publishing"                       , :section_id => section_1.id).first_or_create

                Article.where(:title => "Works"                            , :section_id => section_3.id).first_or_create
                Article.where(:title => "Products"                         , :section_id => section_3.id).first_or_create
                Article.where(:title => "Prices"                           , :section_id => section_3.id).first_or_create
                Article.where(:title => "Production"                       , :section_id => section_3.id).first_or_create
                Article.where(:title => "Agreements"                       , :section_id => section_3.id).first_or_create
                Article.where(:title => "Royalties"                        , :section_id => section_3.id).first_or_create
                Article.where(:title => "Marketing"                        , :section_id => section_3.id).first_or_create
                Article.where(:title => "Performance"                      , :section_id => section_3.id).first_or_create

  section_3   = Section.where(:name  => "Address book"                     , :section_id => section_1.id).first_or_create
                Article.where(:title => "People"                            , :section_id => section_3.id).first_or_create
                Article.where(:title => "Organisations"                     , :section_id => section_3.id).first_or_create

  section_3   = Section.where(:name  => "Workflow"                         , :section_id => section_1.id).first_or_create
                Article.where(:title => "Projects"                         , :section_id => section_3.id).first_or_create
                Article.where(:title => "Collections"                      , :section_id => section_3.id).first_or_create
                Article.where(:title => "Schedules"                        , :section_id => section_3.id).first_or_create
                Article.where(:title => "To-Dos"                           , :section_id => section_3.id).first_or_create
                Article.where(:title => "Issues"                           , :section_id => section_3.id).first_or_create
                Article.where(:title => "Calendars"                        , :section_id => section_3.id).first_or_create
                Article.where(:title => "Pipelines"                        , :section_id => section_3.id).first_or_create
                Article.where(:title => "Copy trackers"                    , :section_id => section_3.id).first_or_create
                Article.where(:title => "Notifications"                    , :section_id => section_3.id).first_or_create

  section_3   = Section.where(:name  => "Data exchange"                    , :section_id => section_1.id).first_or_create
                Article.where(:title => "Bulk imports"                         , :section_id => section_3.id).first_or_create
                Article.where(:title => "Bulk exports"                         , :section_id => section_3.id).first_or_create

  section_3   = Section.where(:name  => "Settings"                         , :section_id => section_1.id).first_or_create
                Article.where(:title => "Users"                            , :section_id => section_3.id).first_or_create
                Article.where(:title => "Titles"                           , :section_id => section_3.id).first_or_create
                Article.where(:title => "Contacts"                         , :section_id => section_3.id).first_or_create
                Article.where(:title => "Sales"                            , :section_id => section_3.id).first_or_create
                Article.where(:title => "Finance"                          , :section_id => section_3.id).first_or_create
                Article.where(:title => "Legal"                            , :section_id => section_3.id).first_or_create
                Article.where(:title => "Production"                       , :section_id => section_3.id).first_or_create
                Article.where(:title => "Marketing"                        , :section_id => section_3.id).first_or_create

section_a2   = Section.where(:area => "Resources"                         , :name  => "Videos"  ).first_or_create












# section_1   = Section.where(:area => "Resources"                         , :name  => "How to"    ).first_or_create
#
#   section_2   = Section.where(:name  => "Users"                           , :section_id => section_1.id).first_or_create
#                Article.where(:title => "Add a new user"                   , :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Titles"                          , :section_id => section_1.id).first_or_create
#               Article.where(:title => "Create a new work and its products"                   , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add another product to an existing title"             , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Update an ISBN"                                       , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Assign an ISBN to the ebook"                          , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Assign an ISBN to a backlist product"                 , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Edit metadata"                                        , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Classify titles"                                      , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Change a work from ‘Proposal’ to ‘Live’"              , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Duplicate an existing product"                        , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Delete a title"                                       , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Delete a product"                                     , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Apply title or product templates"                     , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Generate an AI"                                       , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Generate Multiple AIs At Once"                        , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a series"                                         , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Record team members for a product"                    , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Get an ONIX feed accepted by Nielsen"                 , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Upload a BooksoniX file"                              , :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Collections"                     , :section_id => section_1.id).first_or_create
#               Article.where(:title => "Create a collection"                                                , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add one product to a collection"                                    , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add multiple products to a collection"                             , :section_id => section_2.id).first_or_create
#               Article.where(:title => "Remove a record from a collection"                                 , :section_id => section_2.id).first_or_create
#
#
#   section_2   = Section.where(:name  => "Acquisition"                     , :section_id => section_1.id).first_or_create
#                Article.where(:title => "Complete the proposal"                                              , :section_id => section_2.id).first_or_create
#                Article.where(:title => "Production specs                                                   ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Generate a PDF of the Work P&L and details.                        ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Add a sales profile                                                ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Add a returns profile                                              ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Add sales estimates                                                ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Add an editorial cost                                              ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Add a production component bundle from scratch                     ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Add a new sales channel                                            ", :section_id => section_2.id).first_or_create
#                Article.where(:title => " Add confirmed revenue                                             ", :section_id => section_2.id).first_or_create
#                Article.where(:title => " Override the royalty rate or basis on the P&L detail report.      ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "Override the royalty rate on the Confirmed sales report.           ", :section_id => section_2.id).first_or_create
#                Article.where(:title => "How to add an actual supplier invoice cost                         ", :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Contracts"                       , :section_id => section_1.id).first_or_create
#               Article.where(:title => "Add a contract                                                     ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Edit a contract                                                    ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a contract template                                            ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a Reserve Against Returns                                      ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a royalty specifier                                            ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a new masterchannel                                            ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a royalty specifier at masterchannel level                     ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Provide more than one royalty statement to a contributor           ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "How to preview a contract PDF                                      ", :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Rights"                          , :section_id => section_1.id).first_or_create
#               Article.where(:title => "Add licensed rights to a head contract                             ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a rights deal                                                  ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a co-edition deal                                              ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Record of specifications                                           ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a rights estimate                                              ", :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Finance"                         , :section_id => section_1.id).first_or_create
#               Article.where(:title => "Add a currency                                                     ", :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Production"                      , :section_id => section_1.id).first_or_create
#               Article.where(:title => "Add shipping costs                                                 ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add production component spec                                      ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add production costs                                               ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add production quantities                                          ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Add a new port                                                     ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Generate PDF of P&L summary                                        ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Edit production costs                                              ", :section_id => section_2.id).first_or_create
#               Article.where(:title => "Delete a production run                                            ", :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Files"                           , :section_id => section_1.id).first_or_create
#               Article.where(:title => " Upload files in bulk                                              ", :section_id => section_2.id).first_or_create
#
#   section_2   = Section.where(:name  => "Integrations"                    , :section_id => section_1.id).first_or_create
#               Article.where(:title => " Set Bibliocloud up to interact with Twitter’s API                 ", :section_id => section_2.id).first_or_create
#               Article.where(:title => " Push to Shopify                                                   ", :section_id => section_2.id).first_or_create
