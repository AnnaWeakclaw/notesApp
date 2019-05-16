require "my_notes"

describe "MyNotes" do
  let(:my_notes) {
    MyNotes.new
  }
  it "can add a note with title and body" do
    my_notes.add("Have Breakfast", "Breakfast will give you energy to start the day happily")
    expect(my_notes.notes).to include(:title => "Have Breakfast", :body => "Breakfast will give you energy to start the day happily")
  end

  it "can list all the note titles" do
    my_notes.add("Have Breakfast", "Breakfast will give you energy to start the day happily")
    my_notes.add("Exercise", "Yoga is good for mind and body")
    my_notes.add("Read a book", "Work on your imagination")
    expect(my_notes.title_list).to eq(["Have Breakfast", "Exercise", "Read a book"])
  end
end
