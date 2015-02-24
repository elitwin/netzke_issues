class UpdateTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.references :category
      t.references :estimate
    end

    add_foreign_key :tasks, :categories
    add_foreign_key :tasks, :estimates
  end
end
