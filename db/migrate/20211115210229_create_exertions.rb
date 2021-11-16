class CreateExertions < ActiveRecord::Migration[6.1]
  def change
    creat_table :exertions do |t|
      t.string :name
      t.integer :workout_focus_id
      t.integer :exercise_id
    end
  end
end
