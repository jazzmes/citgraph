require 'spec_helper'

describe "publication_types/new" do
  before(:each) do
    assign(:publication_type, stub_model(PublicationType,
      :type => ""
    ).as_new_record)
  end

  it "renders new publication_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publication_types_path, "post" do
      assert_select "input#publication_type_type[name=?]", "publication_type[type]"
    end
  end
end
