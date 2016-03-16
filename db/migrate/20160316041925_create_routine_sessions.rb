class CreateRoutineSessions < ActiveRecord::Migration
  def change
    create_table :routine_sessions do |t|
      t.references :routine, index: true, foreign_key: true
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
