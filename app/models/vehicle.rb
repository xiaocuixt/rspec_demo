class Vehicle < ActiveRecord::Base
  validates :year, presence: true
end
