require 'spec_helper'

describe UsersController do

  let(:valid_attributes) { { name: "Jim Collins", email: 'user@example.com' } }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET show" do
    it "assigns the requested users as @user" do
      user = User.create! valid_attributes
      get :show, {:id => user.to_param}, valid_session
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "GET new" do
    it "assigns a new user as @user" do
      get :new, {}, valid_session
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "GET edit" do
    it "assigns the requested user as @user" do
      author = Author.create! valid_attributes
      get :edit, {:id => author.to_param}, valid_session
      expect(assigns(:author)).to eq(author)
    end
  end

  
