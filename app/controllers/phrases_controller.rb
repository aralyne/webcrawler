class PhrasesController < ApplicationController
  def index
    phrases = Phrase.all
    if phrases.empty?
      render json: {message: "Empty list"}, status: :ok
    else
      render json: phrases, status: :ok, each_serializer: Phrases::Index::PhraseSerializer
    end
  end  
end
