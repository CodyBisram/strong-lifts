class AddTypeToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :type, :string
  end
end
