require "spec_helper"

describe DisputesController do
  describe "routing" do

    it "routes to #index" do
      get("/disputes").should route_to("disputes#index")
    end

    it "routes to #new" do
      get("/disputes/new").should route_to("disputes#new")
    end

    it "routes to #show" do
      get("/disputes/1").should route_to("disputes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/disputes/1/edit").should route_to("disputes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/disputes").should route_to("disputes#create")
    end

    it "routes to #update" do
      put("/disputes/1").should route_to("disputes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/disputes/1").should route_to("disputes#destroy", :id => "1")
    end

  end
end
