require 'spec_helper'

describe "ApplicationLinks" do
  
  it "should have a root page at '/'" do
    get '/'
    response.should have_selector 'title', :content => "Home"
  end
  
  it "should have a root page at '/home'" do
    get '/home'
    response.should have_selector 'title', :content => "Home"
  end

  it "should have a root page at '/about'" do
    get '/about'
    response.should have_selector 'title', :content => "About"
  end
  
end
