require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home Page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Anne Frank: A Brief History")
  end
end
