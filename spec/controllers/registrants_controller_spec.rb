require 'spec_helper'

describe RegistrantsController do
  describe 'GET #new' do
    it "assigns a new Registrant to @registrant" do
      get :new
      expect(assigns(:registrant)).to be_a_new(Registrant)
    end
    it "assigns a header to @header" do
      get :new
      expect(assigns(:header)).to eq "Alberta Beach Registration"
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
      it "assigns a header to @header" do
        post :create, registrant: attributes_for(:registrant)
        expect(assigns(:header)).to eq "Welcome to Alberta Beach"
      end
      it "redirects to the rooth_path" do
        post :create, registrant: attributes_for(:registrant)
        expect(response).to redirect_to root_path
      end
    end
    
    context "with invalid attributes" do
      xit "does not save registrant to the database"
      xit "re-renders the :new template"
    end
  end
end