require 'spec_helper'

describe "revenues/show" do
  before(:each) do
    @revenue = assign(:revenue, stub_model(Revenue,
      :title => "Title",
      :description => "MyText",
      :price => 1,
      :originality => false,
      :confirmed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
