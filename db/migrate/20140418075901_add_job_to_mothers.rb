class AddJobToMothers < ActiveRecord::Migration
  def change
    add_column :mothers, :job, :string
  end
end
