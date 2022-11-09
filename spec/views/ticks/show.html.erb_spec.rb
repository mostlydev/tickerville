require 'rails_helper'

RSpec.describe "ticks/show", type: :view do
  before(:each) do
    assign(:tick, Tick.create!(
      ticker: nil,
      value: 2.5,
      delta_day: 3.5,
      delta_week: 4.5,
      delta_month: 5.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
  end
end
