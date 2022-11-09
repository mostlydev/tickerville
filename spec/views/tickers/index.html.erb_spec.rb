require 'rails_helper'

RSpec.describe "tickers/index", type: :view do
  before(:each) do
    assign(:tickers, [
      Ticker.create!(
        name: "Name",
        slug: "Slug",
        url: "Url",
        description: "MyText",
        units: "Units"
      ),
      Ticker.create!(
        name: "Name",
        slug: "Slug",
        url: "Url",
        description: "MyText",
        units: "Units"
      )
    ])
  end

  it "renders a list of tickers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Units".to_s), count: 2
  end
end
