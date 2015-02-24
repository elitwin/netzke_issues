class Estimate < ActiveRecord::Base
  validates_presence_of :hours

  validates_uniqueness_of :hours
end
