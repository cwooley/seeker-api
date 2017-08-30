class CreateInteractions < ActiveRecord::Migration[5.1]
  def change
    create_table :interactions do |t|
      t.string :kind
      t.string :status
      t.integer :company_id
      t.date :follow_up_date
      t.timestamps
    end
  end
end
