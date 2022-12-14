require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/ticks", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Tick. As you add validations to Tick, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Tick.create! valid_attributes
      get ticks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      tick = Tick.create! valid_attributes
      get tick_url(tick)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_tick_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      tick = Tick.create! valid_attributes
      get edit_tick_url(tick)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Tick" do
        expect {
          post ticks_url, params: { tick: valid_attributes }
        }.to change(Tick, :count).by(1)
      end

      it "redirects to the created tick" do
        post ticks_url, params: { tick: valid_attributes }
        expect(response).to redirect_to(tick_url(Tick.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Tick" do
        expect {
          post ticks_url, params: { tick: invalid_attributes }
        }.to change(Tick, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post ticks_url, params: { tick: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested tick" do
        tick = Tick.create! valid_attributes
        patch tick_url(tick), params: { tick: new_attributes }
        tick.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the tick" do
        tick = Tick.create! valid_attributes
        patch tick_url(tick), params: { tick: new_attributes }
        tick.reload
        expect(response).to redirect_to(tick_url(tick))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        tick = Tick.create! valid_attributes
        patch tick_url(tick), params: { tick: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested tick" do
      tick = Tick.create! valid_attributes
      expect {
        delete tick_url(tick)
      }.to change(Tick, :count).by(-1)
    end

    it "redirects to the ticks list" do
      tick = Tick.create! valid_attributes
      delete tick_url(tick)
      expect(response).to redirect_to(ticks_url)
    end
  end
end
