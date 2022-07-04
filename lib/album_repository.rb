require "album"
class AlbumRepository
    def all
        list_albums = []
        sql = 'SELECT title, release_year, artist_id FROM albums;'
        array_results = DatabaseConnection.exec_params(sql, [])
        array_results.each do |record|
            repo = Album.new
            repo.title = record['title']
            repo.release_year = record['release_year']
            repo.artist_id = record['artist_id']
            list_albums << repo
        end 
        return list_albums
    end 
    
end 
