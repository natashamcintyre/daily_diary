require 'pg'

def setup_test_database
  p "Setting up test database..."

  conn = PG.connect(dbname: 'daily_diary_test')
  conn.exec("TRUNCATE entries;")
end
