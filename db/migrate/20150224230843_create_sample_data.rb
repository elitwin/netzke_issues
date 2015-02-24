class CreateSampleData < ActiveRecord::Migration
  def up
    ['Personal', 'Work', 'Other'].each{|c| Category.create(name: c)}
    [0, 1, 2, 3, 5, 8, 13].each{|e| Estimate.create(hours: e)}

    t = Task.new
    t.name = "My first task"
    t.priority = 1
    t.category = Category.first
    t.estimate = Estimate.first
    t.save!

    t = Task.new
    t.name = "My second task"
    t.priority = 2
    t.category = Category.last
    t.estimate = Estimate.last
    t.save!
  end

  def down
    Task.delete_all
    Category.delete_all
    Estimate.delete_all
  end
end
