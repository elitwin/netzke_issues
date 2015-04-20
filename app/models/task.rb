class Task < ActiveRecord::Base
  validates_presence_of :name, :priority, :due, :score, :rate

  belongs_to :category
  belongs_to :estimate
end
