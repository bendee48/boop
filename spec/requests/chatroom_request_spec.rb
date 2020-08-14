require 'rails_helper'

RSpec.describe "Chatrooms", type: :request do
  describe "GET /" do
    it "displays chatroom" do
      get root_path

      expect(response.body).to include('Chatroom')
    end
  end
end
