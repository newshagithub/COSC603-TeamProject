class Course < ActiveRecord::Base
  has_many :lessons

  def self.find_for_sitemap
    find(:all, :select => 'id, updated_at',
         :order => 'updated_at DESC',
         :limit => 50000)
  end
end
