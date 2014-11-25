require 'rails_helper'

describe ReadersController do
  describe 'GET new' do
    let!(:reader) { mock_model('Reader').as_new_record }

    before :each do
      allow(Reader).to receive_messages(new: reader)
    end

    it 'renders new template' do
      get :new
      expect(response).to render_template :new
    end
    it 'assigns @reader variable to the view' do
      get :new
      expect(assigns[:reader]).to eq reader
    end
  end
end
