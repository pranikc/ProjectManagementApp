class Project < ApplicationRecord
    has_one_attached :song_file
    has_many :user_projects
    has_many :users, through: :user_projects

    belongs_to :like

    def is_saved_like?
      puts self.like.is_liked
      if self.like.is_liked == true
        return true
      else
        self.like.update(:is_liked => true)
        return false
      end
    end

end
