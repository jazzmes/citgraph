require 'spec_helper'

describe "publications/new" do
  before(:each) do
    assign(:publication, stub_model(Publication,
      :name => "MyString",
      :publication_type => nil
    ).as_new_record)
  end

  it "renders new publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publications_path, "post" do
      assert_select "input#publication_name[name=?]", "publication[name]"
      assert_select "input#publication_publication_type[name=?]", "publication[publication_type]"
    end
  end
end
