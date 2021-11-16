class CreateWorkoutFocuses < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_focuses do |t|
      t.string :name
      t.integer :muscle_group_id
      t.integer :workout_id
    end
  end
end


