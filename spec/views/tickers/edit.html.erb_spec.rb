require 'rails_helper'

RSpec.describe "tickers/edit", type: :view do
  let(:ticker) {
    Ticker.create!(
      name: "MyString",
      slug: "MyString",
      url: "MyString",
      description: "MyText",
      units: "MyString"
    )
  }

  before(:each) do
    assign(:ticker, ticker)
  end

  it "renders the edit ticker form" do
    render

    assert_select "form[action=?][method=?]", ticker_path(ticker), "post" do

      assert_select "input[name=?]", "ticker[name]"

      assert_select "input[name=?]", "ticker[slug]"

      assert_select "input[name=?]", "ticker[url]"

      assert_select "textarea[name=?]", "ticker[description]"

      assert_select "input[name=?]", "ticker[units]"
    end
  end
end
