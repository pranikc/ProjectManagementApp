class Project < ApplicationRecord
    has_one_attached :song_file
    has_many :user_projects
    has_many :users, through: :user_projects
  
    

end
