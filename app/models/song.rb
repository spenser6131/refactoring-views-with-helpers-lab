class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=(artist)
    art = Artist.find_or_create_by(name: artist)
    self.artist = art
  end

end
