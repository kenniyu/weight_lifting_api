class Routine < ActiveRecord::Base
  belongs_to :user
  belongs_to :routine_session

  has_many :routine_exercises
  has_many :routine_sessions

  has_many :exercises, through: :routine_exercises
  has_many :routine_exercises
  has_many :routine_exercise_sets

end
