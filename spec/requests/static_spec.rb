require '../../spec/spec_helper'

describe "Static pages" do

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static/contact'
      page.should have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static/contact'
      page.should have_selector("title", :minimum=>"Contact")
    end
  end

  describe "Home page" do
   it "should have the content 'What we do'" do
      visit '/static/home'
      page.should have_content('What we do')
    end
  end

  describe "Products enquiry page" do
    it "should have the content 'Made by our NGO'" do
      visit '/enquiries/new'
      page.should have_content('Made by our NGO')
    end
  end


end

