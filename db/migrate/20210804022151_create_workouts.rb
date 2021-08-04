class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      # t.has_many :exercises
      t.date :datetime

      t.timestamps
    end
  end
end
