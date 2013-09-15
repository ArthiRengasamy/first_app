require 'spec_helper'

describe "Stories page" do


#  it "responds with XML" do
#    visit '/story'
#    response.body.should == story.to_xml
#  end

  it 'should display the xml' do
    get :stories, :format => 'xml', :lang => 'en'
    response.should be_success
  end

end


# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#get static_home
#response.status.should be(200)