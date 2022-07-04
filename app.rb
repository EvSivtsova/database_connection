require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT title, release_year, artist_id FROM albums;'
result = DatabaseConnection.exec_params(sql, [])

sql_2 = 'SELECT name, genre FROM artists;'
result_2 = DatabaseConnection.exec_params(sql_2, [])


# Print out each record from the result set .
result.each do |record|
  p record
end

result_2.each do |record|
  p record
end