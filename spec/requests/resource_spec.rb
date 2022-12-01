require 'rails_helper'

RSpec.describe "Resources", type: :request do
  describe 'GET #index' do
    before(:example) { get '/' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'returns text in response body' do
      expect(response.body).to include('Welcome to URL_Shortener')
    end
  end
end
