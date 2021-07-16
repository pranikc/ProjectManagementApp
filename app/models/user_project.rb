class UserProject < ApplicationRecord
    has_one_attached :song_file
    belongs_to :user 
    belongs_to :project
    belongs_to :project_category

    accepts_nested_attributes_for :project

   
end
