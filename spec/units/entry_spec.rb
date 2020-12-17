require 'entry'

describe Entry do
  describe '#self.create' do
    let(:title) { double 'title' }
    let(:content) { double 'content' }
    it 'creates an instance of the described class' do
      expect(Entry.create(title, content)).to be_instance_of Entry
    end
  end
end
