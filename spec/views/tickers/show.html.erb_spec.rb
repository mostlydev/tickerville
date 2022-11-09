require 'rails_helper'

RSpec.describe "tickers/show", type: :view do
  before(:each) do
    assign(:ticker, Ticker.create!(
      name: "Name",
      slug: "Slug",
      url: "Url",
      description: "MyText",
      units: "Units"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Units/)
  end
end
