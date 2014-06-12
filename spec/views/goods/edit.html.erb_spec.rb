require 'rails_helper'

RSpec.describe "goods/edit", :type => :view do
  before(:each) do
    @good = assign(:good, Good.create!(
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit good form" do
    render

    assert_select "form[action=?][method=?]", good_path(@good), "post" do

      assert_select "input#good_title[name=?]", "good[title]"

      assert_select "input#good_price[name=?]", "good[price]"
    end
  end
end
