class SelectedExercise < ActiveRecord::Base

    belongs_to :Workout
    belongs_to :Exercise

end