require 'rails_helper'

RSpec.describe Author, type: :model do
    before(:each) do
      @author = FactoryBot.create(:author)
    end
  
    it 'is valid with valid attributes' do
      expect(@author).to be_valid
    end
  
    it 'is not valid without a name' do
      @author.name = nil
      expect(@author).to_not be_valid
    end
  
    it 'is not valid if Name length is greater than 250' do
      @author.name = 'Benneth Green' * 10
      expect(@author.name.length).to be <= 250
    end  
  end