class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.references :exercise, index: true, foreign_key: true
      t.references :routine_session, index: true, foreign_key: true
      t.decimal :weight
      t.integer :reps

      t.timestamps null: false
    end
  end
end
