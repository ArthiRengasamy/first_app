require '../../spec/spec_helper'

describe "Authentication" do

  before do
    @user = User.new(name: "Volunteer Test", email: "volunteer@test.com",
                     password: "testing", password_confirmation: "testing")
  end

  subject { @user }

  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end

  describe "signin" do
    before { visit signin_path }

      describe "with valid information" do
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end
    end
  end

  describe "signup validation" do

    before { visit '/signup' }

    let(:submit) { "Volunteer signup" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end