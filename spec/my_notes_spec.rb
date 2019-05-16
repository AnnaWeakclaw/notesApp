require "my_notes"

describe "MyNotes" do
  let(:my_notes) {
    MyNotes.new
  }
  before(:each) do
    my_notes.add("Have Breakfast", "Breakfast will give you energy to start the day happily")
    my_notes.add("Exercise", "Yoga is good for mind and body")
    my_notes.add("Read a book", "Work on your imagination")
  end
  it "can add a note with title and body" do
    my_notes.add("Blog", "Write me")
    expect(my_notes.notes).to include(:title => "Blog", :body => "Write me")
  end

  it "can list all the note titles" do
    expect(my_notes.title_list).to eq(["Have Breakfast", "Exercise", "Read a book"])
  end

  it "allows user to see all the titles" do
    expect { my_notes.numbered_list }.to output(a_string_including("1. Have Breakfast\n2. Exercise")).to_stdout
  end

  it "allows user to pick a note and see its title and body" do
    expect { my_notes.pick_me("1") }.to output("Title you picked is: Have Breakfast and the body is: Breakfast will give you energy to start the day happily \n").to_stdout
  end

  it "allows user to add tile and body of the note from command line" do
    #warning on new :expect and should syntax
    my_notes.stub(:gets).and_return("My Personal note", "This is a very short note")
    expect(my_notes.from_input).to include({ :title => "My Personal note", :body => "This is a very short note" })
  end
end
