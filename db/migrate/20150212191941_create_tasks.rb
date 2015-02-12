class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :done
      t.string :name
      t.text :notes
      t.integer :priority
      t.date :due

      t.timestamps null: false
    end
  end
end
