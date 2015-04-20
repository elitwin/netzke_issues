class CreateEstimate < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.integer :hours, null: false
    end

    add_index :estimates, :hours, unique: true
  end
end
