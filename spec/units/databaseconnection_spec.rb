require 'databaseconnection'

describe DatabaseConnection do

  describe '#setup' do
    it 'sets up a connection to a database through PG' do
      expect(PG).to receive(:connect).with(dbname: 'daily_diary_test')

      DatabaseConnection.setup('daily_diary_test')
    end

    it 'sets up a persistent connection' do
      connection = DatabaseConnection.setup('daily_diary_test')

      expect(DatabaseConnection.connection).to eq connection
    end
  end

  describe '#query' do
    it "executes a query via PG" do
      connection = DatabaseConnection.setup('daily_diary_test')
      expect(connection).to receive(:exec).with('SELECT * FROM entries')

      DatabaseConnection.query('SELECT * FROM entries')
    end
  end
end
