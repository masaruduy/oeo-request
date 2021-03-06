require 'spec_helper'

describe "requests/new" do
  before(:each) do
    assign(:request, stub_model(Request,
      :req_hours => "9.99",
      :description => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requests_path, "post" do
      assert_select "input#request_req_hours[name=?]", "request[req_hours]"
      assert_select "textarea#request_description[name=?]", "request[description]"
      assert_select "input#request_user_id[name=?]", "request[user_id]"
    end
  end
end
