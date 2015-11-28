class Article < ActiveRecord::Base
  belongs_to :section
  include PgSearch
  multisearchable :against => [:title, :body]

    pg_search_scope :article_search,
                    :against           => {:title       => 'A'.freeze,
                                           :body        => 'B'.freeze}
  def self.text_search(query)
    if query.present?
      article_search(query)
    else
      all
    end
  end

RANDOMS = ['http://40.media.tumblr.com/80010e4645b869540a5c91644d337f2d/tumblr_nqx92jMV3i1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/86c3498ab575000d5d54a323c4ba9807/tumblr_nqx8s9ze7A1tubinno1_1280.jpg',
          'http://40.media.tumblr.com/c877dd269d1ac1dab597ca3d927e97f6/tumblr_nqx8pj7h531tubinno1_1280.jpg',
          'http://41.media.tumblr.com/982813487caff601ca5ba35f7c01d154/tumblr_nqx8mfSEYX1tubinno1_1280.jpg',
          'http://40.media.tumblr.com/ba4438ddcc4b186ca8a00314d48a646e/tumblr_nqx8lbO6HP1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/3966b51da2d941f0c01a907f190ebcb9/tumblr_nqx8hsjuCl1tubinno1_1280.jpg',
          'http://40.media.tumblr.com/ac9d3c7eeed9e7271efe5e0d9b88ae2d/tumblr_nqx8chHbKD1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/0390d80d6c8cc4a7096033182a4bfe8a/tumblr_ndyvukSjNl1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/90ef0b4692e0ba4df321674c3572e5ba/tumblr_ndyve8fmFa1tubinno1_r1_1280.jpg',
          'http://41.media.tumblr.com/a7777db1355392fba016c084fed1f1ea/tumblr_ndyfxa2P5I1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/f5ba12af4c792fc044c336369d4571c5/tumblr_ndyfz1XSPg1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/fddb3f2b0bdf390efd7ea87372e75fa5/tumblr_ndyg3pYbKW1tubinno1_1280.jpg',
          'http://40.media.tumblr.com/38e8014b6941cf1dd9cf814c57f12942/tumblr_ndyfvm0EwX1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/0976a73b3be82d492da41f5d156ba617/tumblr_ndyfq386o41tubinno1_1280.jpg',
          'http://41.media.tumblr.com/758a5cb9046fde53138ad0f55527ca25/tumblr_ndyfdoR6Wp1tubinno1_1280.jpg',
          'http://41.media.tumblr.com/3b96bb79f63b488440fb44cecc08361c/tumblr_ndyf96a3711tubinno1_1280.jpg',
          'http://40.media.tumblr.com/e67b59d43c79c496b6fa8f1dddabef47/tumblr_nbc7zx6vJl1tubinno1_1280.jpg'
        ]
  def random_image
    RANDOMS.sample
  end

end
