require 'rails_helper'

RSpec.describe "goods/new", :type => :view do
  before(:each) do
    assign(:good, Good.new(
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders new good form" do
    render

    assert_select "form[action=?][method=?]", goods_path, "post" do

      assert_select "input#good_title[name=?]", "good[title]"

      assert_select "input#good_price[name=?]", "good[price]"
    end
  end
end
