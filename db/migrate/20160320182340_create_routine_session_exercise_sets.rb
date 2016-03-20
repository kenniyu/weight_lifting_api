class CreateRoutineSessionExerciseSets < ActiveRecord::Migration
  def change
    create_table :routine_session_exercise_sets do |t|
      t.references :routine_session, index: true, foreign_key: true
      t.references :exercise, index: true, foreign_key: true
      t.decimal :weight
      t.integer :reps

      t.timestamps null: false
    end
  end
end
