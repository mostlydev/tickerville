require "rails_helper"

RSpec.describe TickersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tickers").to route_to("tickers#index")
    end

    it "routes to #new" do
      expect(get: "/tickers/new").to route_to("tickers#new")
    end

    it "routes to #show" do
      expect(get: "/tickers/1").to route_to("tickers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tickers/1/edit").to route_to("tickers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tickers").to route_to("tickers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tickers/1").to route_to("tickers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tickers/1").to route_to("tickers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tickers/1").to route_to("tickers#destroy", id: "1")
    end
  end
end
