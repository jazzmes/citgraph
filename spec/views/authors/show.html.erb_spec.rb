require 'spec_helper'

describe "authors/show" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :surname => "Surname",
      :given_name => "Given Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Surname/)
    rendered.should match(/Given Name/)
  end
end
