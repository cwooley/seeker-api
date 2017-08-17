class CreateJobApps < ActiveRecord::Migration[5.1]
  def change
    create_table :JobApps do |t|
      t.string :company_name
      t.boolean :active
      t.string :user_id

      t.timestamps
    end
  end
end
