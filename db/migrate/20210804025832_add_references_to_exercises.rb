class AddReferencesToExercises < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercises, :workout, null: false, foreign_key: true
  end
end
