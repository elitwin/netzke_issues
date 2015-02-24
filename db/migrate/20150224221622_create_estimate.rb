class CreateEstimate < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.integer :hours
    end

    add_index :estimates, :hours, unique: true
  end
end
