require 'spec_helper'

describe "pages/home.html.haml" do
  it "should display the title" do
    render
    rendered.should have_selector('h1', :content => "Anne Frank")
  end
end
