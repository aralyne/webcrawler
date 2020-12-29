class Phrases::Index::PhraseSerializer < ActiveModel::Serializer
    attributes :phrase, :message
  
    def phrase
      object.as_json(only: [:description])
    end
    
    def message
    "Todas Frases"
    end
   
end