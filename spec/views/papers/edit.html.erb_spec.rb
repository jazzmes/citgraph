require 'spec_helper'

describe "papers/edit" do
  before(:each) do
    @paper = assign(:paper, stub_model(Paper,
      :title => "MyString",
      :year => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit paper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do
      assert_select "input#paper_title[name=?]", "paper[title]"
      assert_select "input#paper_year[name=?]", "paper[year]"
      assert_select "textarea#paper_notes[name=?]", "paper[notes]"
    end
  end
end
