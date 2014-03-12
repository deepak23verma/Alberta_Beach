require 'spec_helper'

describe RegistrantsController do
  describe 'GET #new' do
    it "assigns a new Registrant to @registrant" do
      get :new
      expect(assigns(:registrant)).to be_a_new(Registrant)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the registrant to the database" do
        expect{
          post :create, registrant: attributes_for(:registrant)
        }.to change(Registrant, :count).by(1)
      end
      it "redirects to the rooth_path" do
        post :create, registrant: attributes_for(:registrant)
        expect(response).to redirect_to root_path
      end
    end
    
    context "with invalid attributes" do
      it "does not save registrant to the database" do
        expect{
          post :create, registrant: attributes_for(:invalid_registrant)
        }.to_not change(Registrant, :count)
      end
      it "re-renders the :new template" do
        post :create, registrant: attributes_for(:invalid_registrant)
        expect(response).to render_template :new
      end
    end
    
  end
end