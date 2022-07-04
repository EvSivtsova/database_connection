require "artist_repository"

def reset_albums_table
  seed_sql = File.read('spec/seed.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library'})
  connection.exec(seed_sql)
end

describe ArtistRepository do
  before(:each) do
    reset_artists_table
  end

  it "returns all artists" do
    artists = ArtistRepository.new
    expect(artists.all).to eq 4
  end
end