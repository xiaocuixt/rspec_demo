require 'rails_helper'

describe VehiclesControllerss do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates the vehicle' do
        post :create, vehicle: FactoryGirl.attributes_for(:vehicle)
        expect(Vehicle.count).to eq(1)
      end

      it 'redirects to the "show" action for the new vehicle' do
        post :create, vehicle: FactoryGirl.attributes_for(:vehicle)
        expect(response).to redirect_to Vehicle.first
      end
    end

    context 'with invalid attributes' do
      it 'does not create the vehicle' do
        post :create, vehicle: FactoryGirl.attributes_for(:vehicle, year: nil)
        expect(Vehicle.count).to eq(0)
      end

      it 're-renders the "new" view' do
        post :create, vehicle: FactoryGirl.attributes_for(:vehicle, year: nil)
        expect(response).to render_template :new
      end
    end

    context 'json' do
      context 'with valid attributes' do
        it 'creates the vehicle' do
          post :create, vehicle: FactoryGirl.attributes_for(:vehicle), format: :json
          expect(Vehicle.count).to eq(1)
        end

        it 'responds with 201' do
          post :create, vehicle: FactoryGirl.attributes_for(:vehicle), format: :json
          expect(response).to have_http_status(201)
        end
      end

      context 'with invalid attributes' do
        it 'does not create the vehicle' do
          post :create, vehicle: FactoryGirl.attributes_for(:vehicle, year: nil), format: :json
          expect(Vehicle.count).to eq(0)
        end

        it 'responds with 422' do
          post :create, vehicle: FactoryGirl.attributes_for(:vehicle, year: nil), format: :json
          expect(response).to have_http_status(422)
        end
      end
    end
  end
end