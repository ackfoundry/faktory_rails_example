class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
