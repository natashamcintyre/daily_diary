class Entry

  attr_reader :title, :content

  def initialize(title, content)
    @title = title
    @content = content
  end

  def self.create(title, content)
    @entry = Entry.new(title, content)
  end

end
