class UserProject < ApplicationRecord

    belongs_to :user 
    belongs_to :project
    belongs_to :user_project

end
