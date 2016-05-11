class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #explicit join
  has_many :progresses
  has_many :courses, :through => :progresses
  has_many :lessons, :through => :progresses
  has_many :lectures, :through => :progresses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,  :omniauthable, :omniauth_providers => [:facebook]


  # Paperclip user avatar
  has_attached_file :avatar,
                    :path => ":rails_root/public/system/:class/:attachement/:id/:basename_:style.:extension",
                    :url => "/system/:class/:attachement/:id/:basename_:style.:extension",
                    :default_url => "missing_thumb.png",
                    :styles => {
                        :thumb    => ['100x100#',  :png, :quality => 70],
                        :preview  => ['480x480#',  :png, :quality => 70],
                        :large    => ['600>',      :png, :quality => 70],
                        :retina   => ['1200>',     :png, :quality => 30]
                    },
                    :convert_options => {
                        :thumb    => '-set colorspace sRGB -strip',
                        :preview  => '-set colorspace sRGB -strip',
                        :large    => '-set colorspace sRGB -strip',
                        :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
                    }

  validates_attachment :avatar,
                       #:presence => true,
                       :size => { :in => 0..10.megabytes },
                       :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }

  #validates :name,
   #         :presence => true,
    #        :uniqueness => true


  # method to extract the information that is available after the authentication.
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
