class RoutineSession < ActiveRecord::Base
  belongs_to :routine

  has_many :exercise_sets
end
