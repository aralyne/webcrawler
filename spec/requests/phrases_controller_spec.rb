require "rails_helper"

RSpec.describe 'PhrasesController', type: :request do
  describe "GET #index" do 
    it 'must return 200 http status code' do
      
      get '/phrases'

      expect(response).to have_http_status(:ok) 
    end 

    context "When to list registered phrases" do
      it 'must return a list of phrases' do
        phrase = Phrase.create(description:"The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking.")
         
        get '/phrases'
        
        expect(json_body[0]).to have_key(:phrase) 
        expect(json_body[0][:phrase]).to have_key(:description)

      end
    end

    context "When not to list registered phrases" do
      it 'Inform the phrase that there are no phrases registered' do
          
        get '/phrases'
        
        expect(json_body).to have_key(:message)
        expect(json_body[:message]).to eq("Empty list")
        
      end
    end
  end

end
