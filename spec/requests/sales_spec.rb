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
      get root_path
      expect(response).to be_successful
    end  
  end
end
