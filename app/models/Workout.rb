class Workout < ActiveRecord::Base

    has_many :selected_exercises
    has_many :exercises, through: :selected_exercises

end