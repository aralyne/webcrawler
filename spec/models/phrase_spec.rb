require 'rails_helper'

RSpec.describe Phrase, type: :model do
  
  it { is_expected.to validate_presence_of(:description) } 
end
