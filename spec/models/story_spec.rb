require '../../spec/spec_helper'

describe Story do
  #let(:user) { FactoryGirl.create(:user) }
  #before { @story = user.stories.build(content: "Sample story content") }

  before do
    @user = User.new(name: "Volunteer name", email: "volunteer@test.com",
                     password: "xyzabc", password_confirmation: "xyzabc")

    @story = @user.stories.build(content: "Sample story content")

  end

  subject { @story }
# Story should belong to a user

  describe "when user_id is not present" do
    before { @story.user_id = nil }
    it { should_not be_valid }
  end
end

# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#get static_home
#response.status.should be(200)