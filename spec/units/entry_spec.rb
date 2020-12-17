describe Entry do
  describe '#self.create' do
    it 'creates an instance of the described class' do
      expect(Entry.create).to be_instance_of Entry
    end
  end
end
