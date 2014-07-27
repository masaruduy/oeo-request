require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :req_hours => "9.99",
        :description => "MyText",
        :user_id => 1
      ),
      stub_model(Request,
        :req_hours => "9.99",
        :description => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end