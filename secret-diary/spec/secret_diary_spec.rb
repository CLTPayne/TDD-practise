require './lib/secret_diary.rb'

describe SecretDiary do

  it "can be locked" do
    diary = SecretDiary.new
    expect(diary).to respond_to "lock"
  end

  describe "#lock method" do
    it "returns a message saying that the diary is locked" do
      diary = SecretDiary.new
      expect(subject.lock).to eq "Is now locked"
    end
  end

  describe "#print_entries method" do
    it "enables a user to print the entries of the diary" do
      diary = SecretDiary.new
      diary.add_entry("Monday", "I love life")
      expect(diary.print_entries).to eq "Title: Monday, Body: I love life"
    end
  end

end
