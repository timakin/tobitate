require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
