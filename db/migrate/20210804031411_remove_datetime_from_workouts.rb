class RemoveDatetimeFromWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :datetime, :date
  end
end
