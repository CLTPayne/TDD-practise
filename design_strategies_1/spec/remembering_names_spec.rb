require "remember_names"

describe "the remember name method" do
  it "returns the name given and confirms that it is now stored" do
    expect(remember_name("Sarah")).to eq "The name Sarah is now stored."
  end
end


# Can have a context / do block before the it / do block 
