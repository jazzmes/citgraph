require 'spec_helper'

describe "publication_types/index" do
  before(:each) do
    assign(:publication_types, [
      stub_model(PublicationType,
        :type => "Type"
      ),
      stub_model(PublicationType,
        :type => "Type"
      )
    ])
  end

  it "renders a list of publication_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
