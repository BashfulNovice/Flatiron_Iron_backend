class WorkoutFocus < ActiveRecord::Base

    belongs_to :workout
    has_many :exertions
    belongs_to :muscle_groups

end
