require "artist"

class ArtistRepository
  def all
    all_artists = []
    sql = 'SELECT name, genre FROM artists;'
    data_array = DatabaseConnection.exec_params(sql, [])
    data_array.each do |artist|
       item = Artist.new
       item.name = artist['name']
       item.genre = atisit['genre']
       all_artists << item
    end
    return all_artists
  end
end