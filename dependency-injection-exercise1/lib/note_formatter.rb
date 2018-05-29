require_relative './note_formatter.rb'

class NoteFormatter

  def initialize(note = Note.new)
    @note = note
  end

  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
