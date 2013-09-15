require '../../../spec/spec_helper'
require '../enquiry.rb'

describe Enquiry do

  before do
    @enquiry = Enquiry.new(name: "Volunteer name", email: "volunteer@test.com")
  end

  subject { @enquiry }

  it { should respond_to(:name) }
  it { should respond_to(:email) }


  describe "when name is not present" do
    before { @enquiry.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @enquiry.name = "r" * 51 }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @enquiry.email = " " }
    it { should_not be_valid }
  end


  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @enquiry.email = invalid_address
        expect(@enquiry).not_to be_valid
      end
    end
  end


end

# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#get static_home
#response.status.should be(200)