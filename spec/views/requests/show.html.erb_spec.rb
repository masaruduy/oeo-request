require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :req_hours => "9.99",
      :description => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
