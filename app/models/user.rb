class User < ApplicationRecord
    has_many :user_projects
    has_many :projects, through: :user_projects

    validates :age, numericality:{greater_than:0, less_than: 100, only_integer: true}

    def full_name
        self.first_name + " " + self.last_name
    end
   
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
        self.projects.max_by{ |song| song.plays }
    end

    def least_played_songs
        self.projects.min_by{ |song| song.plays }
    end

    def all_artists
        Project.all.select {|artist| artist.users == self}
    end

    def most_liked_artist
        self.all_artists.max_by{|art| art.likes}
    end

    def least_liked_artist
        self.all_artists.min_by{|art| art.likes}
    end

    def most_played_artist
        self.all_artists.max_by{|art| art.plays}
    end

    def least_played_artist
        self.all_artists.min_by{|art| art.plays}
    end

    def most_viewed_artist
        self.projects.max_by{ |art| art.views }
    end

    def least_viewed_artist
        self.projects.min_by{ |art| art.views }
    end

    def average_song_likes_of_artist

        average_likes = self.projects.map{|avg| avg.likes}

        average_likes.sum.to_f/average_likes.count

    end


    
end
