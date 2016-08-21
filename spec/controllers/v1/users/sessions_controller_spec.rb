require 'rails_helper'

RSpec.describe V1::Users::SessionsController, type: :controller do
  before do
    @user = create :user
    @valid_attrs = {email: @user.email, password: @user.password}
    @invalid_attrs = {email: 'no-user@foo.com', password: 'password'}
  end

  describe "#create" do
    context "with valid credentials" do
      it "should be successful" do
        post :create, params: @valid_attrs, format: :json
        expect(response).to have_http_status(:success)
      end

      it "signs in the user" do
        post :create, params: @valid_attrs, format: :json
        expect(controller.current_user).to eq(@user)
      end
    end

    context "with invalid credentials" do
      it "should be unauthorized" do
        post :create, params: @invalid_attrs, format: :json
        expect(response).to have_http_status(:unauthorized)
      end

      it "does not sign in a user" do
        post :create, params: @invalid_attrs, format: :json
        expect(controller.current_user).to be_nil
      end
    end
  end

  describe "#destroy" do
    context "while signed in" do
      before do
        sign_in @user
      end

      it "should have no content" do
        delete :destroy, format: :json
        expect(response).to have_http_status(:no_content)
      end

      it "signs out the user" do
        delete :destroy, format: :json
        expect(controller.current_user).to be_nil
      end
    end

    context "before signing in" do
      it "should have no content" do
        delete :destroy, format: :json
        expect(response).to have_http_status(:no_content)
      end
    end
  end

end
