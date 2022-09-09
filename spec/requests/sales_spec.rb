require 'rails_helper'

RSpec.describe "Sales", type: :request do
  describe "GET /" do
    it "succeeds" do
      get root_path
      expect(response).to be_successful
    end  
  end

  describe "GET /sales" do
    it "succeeds" do
      get sales_path
      expect(response).to be_successful
    end  
  end

  describe "GET /sales/new" do
    it "succeeds" do
      get new_sale_path
      expect(response).to be_successful
    end  
  end

  describe "POST /sales" do
    it "redirect to sales index" do
      post "/sales"
      expect(response).to redirect_to(root_path)
    end
  end
end
