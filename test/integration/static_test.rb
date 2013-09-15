require '../app/views/static/contact.html.erb'
require '../app/views/static/home.html.erb'

class StaticTest < ActionDispatch::IntegrationTest

  #Test the static pages - Home and Contact us

  describe "Static pages" do

    describe "Home page" do

      it "should have the content 'What we do'" do
        visit '/static/home'
        page.should have_content('What we do')
      end
    end

    describe "Contact page" do

      it "should have the content 'business hours'" do
        visit '/static_pages/home'
        page.should have_content('business hours')
      end
    end
  end
end
