class Exercise < ActiveRecord::Base

    has_many :exertions
    belongs_to :muscle_groups

end
