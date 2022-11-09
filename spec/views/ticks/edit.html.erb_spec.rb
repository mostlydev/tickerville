require 'rails_helper'

RSpec.describe "ticks/edit", type: :view do
  let(:tick) {
    Tick.create!(
      ticker: nil,
      value: 1.5,
      delta_day: 1.5,
      delta_week: 1.5,
      delta_month: 1.5
    )
  }

  before(:each) do
    assign(:tick, tick)
  end

  it "renders the edit tick form" do
    render

    assert_select "form[action=?][method=?]", tick_path(tick), "post" do

      assert_select "input[name=?]", "tick[ticker_id]"

      assert_select "input[name=?]", "tick[value]"

      assert_select "input[name=?]", "tick[delta_day]"

      assert_select "input[name=?]", "tick[delta_week]"

      assert_select "input[name=?]", "tick[delta_month]"
    end
  end
end
