class AddDateToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :date, :datetime
  end
end
