class SecretDiary

  attr_reader :entries

  def initialize
    @entries = []
  end

  def lock
    "Is now locked"
  end

  def add_entry(title, body)
    @entries << {title: title, body: body}
    :ok
  end

  def print_entries
    @entries.each do |entry|
      entry.each do |title, body|
        return "Title: #{entry.fetch(:title)}, Body: #{entry.fetch(:body)}"
      end
    end
  end

end
