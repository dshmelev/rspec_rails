require 'rails_helper'

RSpec.describe "Goods", :type => :request do
  describe "GET /goods" do
    it "works! (now write some real specs)" do
      get goods_path
      expect(response.status).to be(200)
    end
  end
end
