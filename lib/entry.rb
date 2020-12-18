class Entry

  attr_reader :title, :content

  def initialize(title, content)
    @title = title
    @content = content
  end

  def self.create(title, content)
    result = DatabaseConnection.query("INSERT INTO entries (title, content) VALUES ('#{title}', '#{content}') RETURNING title, content")
    Entry.new(result[0]['title'], result[0]['content'])
  end

end
