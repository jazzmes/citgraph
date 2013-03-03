require 'spec_helper'

describe "publication_types/edit" do
  before(:each) do
    @publication_type = assign(:publication_type, stub_model(PublicationType,
      :type => ""
    ))
  end

  it "renders the edit publication_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publication_type_path(@publication_type), "post" do
      assert_select "input#publication_type_type[name=?]", "publication_type[type]"
    end
  end
end
