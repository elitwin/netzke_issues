class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :done, null: false
      t.string :name, null: false
      t.text :notes
      t.integer :priority, null: false
      t.date :due, null: false
      t.float :score, null: false
      t.decimal :rate, precision: 7, scale: 4, null: false

      t.timestamps null: false
    end
  end
end
