require 'spec_helper'

describe "authors/edit" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :surname => "MyString",
      :given_name => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", author_path(@author), "post" do
      assert_select "input#author_surname[name=?]", "author[surname]"
      assert_select "input#author_given_name[name=?]", "author[given_name]"
    end
  end
end
