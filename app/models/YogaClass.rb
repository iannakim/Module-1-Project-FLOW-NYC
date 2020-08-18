class YogaClass < ActiveRecord::Base
 
  has_many :reservations
  has_many :students, through: :reservations
  belongs_to :instructor


def initialize(name, location, instructor_id=nil)
  @name = name
  @location = location
  @instructor_id
end


end
