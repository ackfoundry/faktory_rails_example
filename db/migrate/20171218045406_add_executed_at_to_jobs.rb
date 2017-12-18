class AddExecutedAtToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :executed_at, :datetime
  end
end
