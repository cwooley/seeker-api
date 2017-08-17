class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :position
      t.integer :job_app_id
      
      t.timestamps
    end
  end
end
