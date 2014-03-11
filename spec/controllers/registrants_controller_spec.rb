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
      xit "saves the registrant to the database"
      xit "assigns a header to @header"
      xit "redirects to the rooth_path"
    end
    context "with invalid attributes" do
      xit "does not save registrant to the database"
      xit "re-renders the :new template"
    end
  end
end