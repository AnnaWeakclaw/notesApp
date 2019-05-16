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

  def numbered_list
    titles = title_list
    i = 1
    titles.each { |title|
      puts "#{i.to_s}. #{title}"
      i += 1
    }
  end

  def pick_me(number)
    number = number.to_i
    puts "Title you picked is: #{@notes[number-1][:title]} and the body is: #{@notes[number-1][:body]} "
  end

  def from_input
    puts "Add title "
    title = gets.chomp
    puts "Add body"
    body = gets.chomp
    add(title, body)
  end
end
