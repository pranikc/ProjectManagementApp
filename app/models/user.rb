class User < ApplicationRecord
    has_many :projects, through: :user_projects
    has_many :user_projects

    def most_liked_songs
        self.projects.max_by{ |song| song.projects }
    end

    def least_liked_songs
        self.projects.min{ |song| song.projects }
    end

    
end
