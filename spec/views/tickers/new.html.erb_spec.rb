require 'rails_helper'

RSpec.describe "tickers/new", type: :view do
  before(:each) do
    assign(:ticker, Ticker.new(
      name: "MyString",
      slug: "MyString",
      url: "MyString",
      description: "MyText",
      units: "MyString"
    ))
  end

  it "renders new ticker form" do
    render

    assert_select "form[action=?][method=?]", tickers_path, "post" do

      assert_select "input[name=?]", "ticker[name]"

      assert_select "input[name=?]", "ticker[slug]"

      assert_select "input[name=?]", "ticker[url]"

      assert_select "textarea[name=?]", "ticker[description]"

      assert_select "input[name=?]", "ticker[units]"
    end
  end
end
