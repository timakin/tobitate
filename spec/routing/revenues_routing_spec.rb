require "spec_helper"

describe RevenuesController do
  describe "routing" do

    it "routes to #index" do
      get("/revenues").should route_to("revenues#index")
    end

    it "routes to #new" do
      get("/revenues/new").should route_to("revenues#new")
    end

    it "routes to #show" do
      get("/revenues/1").should route_to("revenues#show", :id => "1")
    end

    it "routes to #edit" do
      get("/revenues/1/edit").should route_to("revenues#edit", :id => "1")
    end

    it "routes to #create" do
      post("/revenues").should route_to("revenues#create")
    end

    it "routes to #update" do
      put("/revenues/1").should route_to("revenues#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/revenues/1").should route_to("revenues#destroy", :id => "1")
    end

  end
end
