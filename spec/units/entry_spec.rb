require 'entry'

describe Entry do
  let(:title) { double 'title' }
  let(:content) { double 'content' }
  subject { described_class.new(title, content) }

  describe '#self.create' do
    it 'creates an instance of the described class' do
      expect(Entry.create(title, content)).to be_instance_of Entry
    end
  end

  describe '#title' do
    it 'returns the title of the entry' do
      expect(subject.title).to be title
    end
  end

  describe '#content' do
    it 'returns the content of the entry' do
      expect(subject.content).to be content
    end
  end

  describe '#all' do
    it "returns a list of all entry titles" do
      Entry.create('title1', 'content1')
      Entry.create('title2', 'content2')

      list = Entry.all

      expect(list.first).to be_a Entry
      expect(list.first.title).to eq 'title1'
      expect(list.last.title).to include 'title2'
    end
  end

end
