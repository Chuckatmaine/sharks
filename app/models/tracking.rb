class Tracking < ActiveRecord::Base
  belongs_to :sharks
  belongs_to :tags
end
