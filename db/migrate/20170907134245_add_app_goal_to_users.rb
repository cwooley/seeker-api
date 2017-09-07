class AddAppGoalToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :app_goal, :integer
  end
end
