# spec/controllers/home_controller_spec.rb
require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    context 'when user is signed in' do
      let(:user) { create(:user) }

      before do
        sign_in user
        get :index
      end
    end
  end
end
