class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_many :exercises
end
