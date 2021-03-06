class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if !Artist.find_by(name: "Drake")
      drake = Artist.create(name: 'Drake')
    else
      drake = Artist.find_by(name: "Drake")
    end
    self.artist=(drake)
  end
end