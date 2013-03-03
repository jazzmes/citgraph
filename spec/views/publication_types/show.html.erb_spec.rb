require 'spec_helper'

describe "publication_types/show" do
  before(:each) do
    @publication_type = assign(:publication_type, stub_model(PublicationType,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
