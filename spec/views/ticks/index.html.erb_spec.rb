require 'rails_helper'

RSpec.describe "ticks/index", type: :view do
  before(:each) do
    assign(:ticks, [
      Tick.create!(
        ticker: nil,
        value: 2.5,
        delta_day: 3.5,
        delta_week: 4.5,
        delta_month: 5.5
      ),
      Tick.create!(
        ticker: nil,
        value: 2.5,
        delta_day: 3.5,
        delta_week: 4.5,
        delta_month: 5.5
      )
    ])
  end

  it "renders a list of ticks" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.5.to_s), count: 2
  end
end
