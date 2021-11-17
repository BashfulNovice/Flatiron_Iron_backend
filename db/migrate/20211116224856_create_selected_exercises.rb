class CreateSelectedExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :selected_exercises do |t|
      
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :workout_id
      t.integer :exercise_id


    end
  end
end
