require 'spec_helper'

describe "papers/new" do
  before(:each) do
    assign(:paper, stub_model(Paper,
      :title => "MyString",
      :year => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new paper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", papers_path, "post" do
      assert_select "input#paper_title[name=?]", "paper[title]"
      assert_select "input#paper_year[name=?]", "paper[year]"
      assert_select "textarea#paper_notes[name=?]", "paper[notes]"
    end
  end
end
