require 'spec_helper'

describe "authors/new" do
  before(:each) do
    assign(:author, stub_model(Author,
      :surname => "MyString",
      :given_name => "MyString"
    ).as_new_record)
  end

  it "renders new author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authors_path, "post" do
      assert_select "input#author_surname[name=?]", "author[surname]"
      assert_select "input#author_given_name[name=?]", "author[given_name]"
    end
  end
end
