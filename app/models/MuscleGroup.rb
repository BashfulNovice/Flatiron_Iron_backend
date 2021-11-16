class MuscleGroup < ActiveRecord::Base

    has_many :workout_focuses
    has_many :exercises
    has_many :workouts, through: :workout_focuses
    has_many :exertions, through: workout_focuses

end
