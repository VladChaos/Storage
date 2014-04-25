class CreateBouqets < ActiveRecord::Migration
  def change
    create_table :bouqets do |t|
      t.string :name
      t.float :cost
      t.integer :amount

      t.timestamps
    end
  end
end
