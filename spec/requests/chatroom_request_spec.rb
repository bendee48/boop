require 'rails_helper'

RSpec.describe "Chatrooms", type: :request do
  describe "GET /" do
    it "displays chatroom" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
