./spec/testing_and_design_strategies_spec.rb

=begin
Story:
As a student
So that I can pay attention to my motivation
I want an IRB application that stores my motivation ratings

Imagining how the software that solves this should look:
> track_motivation(5)
=> "Motivation stored!"
> show_motivations
=> [5]
> track_motivation(6)
=> "Motivation stored!"
> show_motivations
=> [5, 6]

Example test:
describe "the track motivation method" do
  it "gives us a frienly message" do
    expect(track_motivation(5)).to eq "Motivation stored!"
  end
end

Question 1
Apply the imagine how to use it strategy for this brief:
As a student So that I can remember people’s names I want an IRB application that stores the names of people I meet
Don’t implement the solution — just imagine how to use it.

Imagined solution:
Please enter an name
remember_name(“Sarah”)
The name “Sarah” is now stored
show_names
[“Sarah”]
=end

describe "the remember name method" do
  it "returns the name given and confirms that it is now stored" do
    expect(remember_name("Sarah")).to eq "The name "Sarah" is now stored."
  end
end
