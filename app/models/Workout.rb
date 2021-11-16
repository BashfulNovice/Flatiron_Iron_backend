class Workout < ActiveRecord::Base

    has_many :workout_focuses
    has_many :exertions, through: :workout_focuses
    has_many :muscle_groups, through: :workout_focuses

end