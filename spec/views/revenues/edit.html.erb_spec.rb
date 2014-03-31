require 'spec_helper'

describe "revenues/edit" do
  before(:each) do
    @revenue = assign(:revenue, stub_model(Revenue,
      :title => "MyString",
      :description => "MyText",
      :price => 1,
      :originality => false,
      :confirmed => false
    ))
  end

  it "renders the edit revenue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", revenue_path(@revenue), "post" do
      assert_select "input#revenue_title[name=?]", "revenue[title]"
      assert_select "textarea#revenue_description[name=?]", "revenue[description]"
      assert_select "input#revenue_price[name=?]", "revenue[price]"
      assert_select "input#revenue_originality[name=?]", "revenue[originality]"
      assert_select "input#revenue_confirmed[name=?]", "revenue[confirmed]"
    end
  end
end
