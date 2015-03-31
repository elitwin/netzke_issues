class AddScoreToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.float "score"
    end
  end
end
