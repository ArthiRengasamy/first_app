require '../../spec/spec_helper'

describe "Stories XML check" do

  before (:each) do
    visit '/stories.xml'
  end
  it "responds with XML" do
    #response.body.should == story.to_xml
    response = Nokogiri::XML(
 #   response.should have_tag("stories type")

    #response.content_type.should == story.to_xml
    #response.headers["Content-Type"] = 'stories/xml'
  end

end


# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#get static_home
#response.status.should be(200)