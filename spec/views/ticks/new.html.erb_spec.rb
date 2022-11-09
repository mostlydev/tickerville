require 'rails_helper'

RSpec.describe "ticks/new", type: :view do
  before(:each) do
    assign(:tick, Tick.new(
      ticker: nil,
      value: 1.5,
      delta_day: 1.5,
      delta_week: 1.5,
      delta_month: 1.5
    ))
  end

  it "renders new tick form" do
    render

    assert_select "form[action=?][method=?]", ticks_path, "post" do

      assert_select "input[name=?]", "tick[ticker_id]"

      assert_select "input[name=?]", "tick[value]"

      assert_select "input[name=?]", "tick[delta_day]"

      assert_select "input[name=?]", "tick[delta_week]"

      assert_select "input[name=?]", "tick[delta_month]"
    end
  end
end
