require 'spec_helper'

describe "Static pages" do

     describe "Contact page" do

        it "should have the content 'Contact'" do
          visit '/contact'
          expect(page).to have_content('Contact')
        end

        it "should have the title 'Contact'" do
          visit '/contact'
          expect(page).to have_title("Contact")
        end
      end
end

# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#get static_home
#response.status.should be(200)