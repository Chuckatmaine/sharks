class Location < ActiveRecord::Base
      belongs_to :locatable, :polymorphic => true
      acts_as_mappable :default_units => :nms, 
                       :default_formula => :sphere, 
                       :distance_field_name => :distance
end
