class Exercise < ApplicationRecord
  belongs_to :workout, optional: true
  # accepts_nested_attributes_for :workout
end
