class Reservation < ActiveRecord::Base

    belongs_to :student
    belongs_to :yogaclass

end
