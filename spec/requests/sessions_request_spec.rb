require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  let(:user) { create :user }

  describe "GET /login" do
    it "displays login page" do
      get login_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /login" do
    it "logs in the user" do
      login_params = { username: user.username, password: user.password }
      post login_path, params: login_params
      expect(response).to redirect_to root_path
      expect(session[:current_user_id]).to eql user.id
    end
  end

  describe "DELETE /logout" do
    it "logs in the user" do
      get root_path
      session[:current_user_id] = user.id
      expect(session[:current_user_id]).to_not be_nil
      delete logout_path
      expect(session[:current_user_id]).to be_nil
    end
  end
end
