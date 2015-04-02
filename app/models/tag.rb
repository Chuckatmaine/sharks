class Tag < ActiveRecord::Base
  has_many :trackings
  has_many :sharks, :through => :trackings
  has_and_belongs_to_many :sharks
  has_many :users, :through => :tagger
  has_one :location, :as => :locatable
  acts_as_mappable :through => :location
  validates_uniqueness_of :number
def convertlatlon
    self.lat = self.latdeg + (self.latmin / 60) + (self.latsec / 3600)
    if self.ns == 'S' then self.lat = -self.lat end
    self.lng = self.londeg + (self.lonmin / 60) + (self.lonsec / 3600)
    if self.ew == 'W' then self.lng = -self.lng end
end

end
