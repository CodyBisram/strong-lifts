class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :date, :workout_type
  has_many :exercises
end
