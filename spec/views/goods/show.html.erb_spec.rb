require 'rails_helper'

RSpec.describe "goods/show", :type => :view do
  before(:each) do
    @good = assign(:good, Good.create!(
      :title => "Title",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1.5/)
  end
end
