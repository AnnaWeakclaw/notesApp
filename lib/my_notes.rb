class MyNotes
  attr_reader :notes

  def initialize
    @notes = []
  end

  def add(title, body)
    note = { :title => title, :body => body }
    @notes.push(note)
  end

  def title_list
    titles = []
    @notes.map do |hash|
      titles.push(hash[:title])
    end
    titles
  end
end
