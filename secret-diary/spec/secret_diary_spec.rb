require './lib/secret_diary'

describe SecretDiary do
  it "can be locked" do
    expect(subject).to respond_to "lock"
  end 

  describe "lock method" do
    it "returns a message saying that the diary is locked" do
      expect(subject.lock).to eq "Is now locked"
    end
  end
end
