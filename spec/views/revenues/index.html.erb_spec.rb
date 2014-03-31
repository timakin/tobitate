require 'spec_helper'

describe "revenues/index" do
  before(:each) do
    assign(:revenues, [
      stub_model(Revenue,
        :title => "Title",
        :description => "MyText",
        :price => 1,
        :originality => false,
        :confirmed => false
      ),
      stub_model(Revenue,
        :title => "Title",
        :description => "MyText",
        :price => 1,
        :originality => false,
        :confirmed => false
      )
    ])
  end

  it "renders a list of revenues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
