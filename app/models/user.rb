class User < ApplicationRecord
    has_many :user_projects
    has_many :projects, through: :user_projects

  
   
    def most_liked_songs
        self.projects.max_by{ |song| song.likes }
    end

    def least_liked_songs
        self.projects.min_by{ |song| song.likes }
    end

    def most_viewed_songs
        self.projects.max_by{ |song| song.views }
    end

    def least_viewed_songs
        self.projects.min_by{ |song| song.views }
    end

    def most_played_songs

    end

    def least_played_songs

    end

    def most_liked_artist
        User.max_by{|art| art.likes}
    end

    
end
