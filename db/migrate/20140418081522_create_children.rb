class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :surname
      t.integer :age

      t.timestamps
    end
  end
end
