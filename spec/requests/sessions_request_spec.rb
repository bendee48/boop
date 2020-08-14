require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /login" do
    it "displays login page" do
      get login_path

      expect(response.body).to include("Login")
    end
  end
end
