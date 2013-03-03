require 'spec_helper'

describe "authors/index" do
  before(:each) do
    assign(:authors, [
      stub_model(Author,
        :surname => "Surname",
        :given_name => "Given Name"
      ),
      stub_model(Author,
        :surname => "Surname",
        :given_name => "Given Name"
      )
    ])
  end

  it "renders a list of authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
  end
end
