require 'spec_helper'

describe "pages/home.html.haml" do
  it "should display the Anne Frank's picture" do
    render
    rendered.should have_selector('img', :src => "images/AnneFrankChair.jpg", :alt => "AnneFrankChair.jpg")
  end
end