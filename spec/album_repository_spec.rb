require 'album_repository'

def reset_albums_table
    seed_sql = File.read('spec/seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library' })
    connection.exec(seed_sql)
end

RSpec.describe AlbumRepository do
    before(:each) do 
        reset_albums_table
    end

    it "returns all albums" do 
        repo = AlbumRepository.new
        albums = repo.all
        expect(albums.length).to eq 12
    end 
end 