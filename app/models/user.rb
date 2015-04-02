class User < ActiveRecord::Base
  has_many :tags
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :omniauthable

has_attached_file :avatar, 
:default_url => "/images/missing.png",
:path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
:url => "/system/:attachment/:id/:basename_:style.:extension",
:styles => {
  :thumb    => ['100x100#',  :jpg, :quality => 70],
  :preview  => ['480x480#',  :jpg, :quality => 70],
  :large    => ['600x',      :jpg, :quality => 70],
  :shark1   => ['x700',      :jpg, :quality => 70],
  :larger   => ['x600',      :jpg, :quality => 70],
  :retina   => ['1200>',     :jpg, :quality => 30]
},
:convert_options => {
  :thumb    => '-set colorspace sRGB -strip',
  :preview  => '-set colorspace sRGB -strip',
  :large    => '-set colorspace sRGB -strip',
  :shark1   => '-set colorspace sRGB -strip',
  :larger   => '-set colorspace sRGB -strip',
  :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
}
validates_attachment :avatar,
    #:presence => true,
    :size => { :in => 0..20.megabytes },
    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }
end