require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET index" do
    context 'with 25 users' do
      let(:users) { create_list(:user, 25) }
      it 'should return all users' do
        get :index
        expect(assigns(:users)).to eq(users)
      end
    end
  end

  describe "POST create" do
    context 'with valid user' do
      let(:user) { build :user }
      it 'should save' do
        post :create, { user: user.attributes }
        expect(User.first.email).to eq(user.email)
      end
    end
  end
end
