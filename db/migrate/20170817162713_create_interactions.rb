class CreateInteractions < ActiveRecord::Migration[5.1]
  def change
    create_table :interactions do |t|
      t.string :type
      t.string :status
      t.integer :job_app_id
      
      t.timestamps
    end
  end
end
