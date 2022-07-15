require 'rails_helper'
RSpec.describe Author, type: :model do
 describe 'Validations for the Author model' do

  before(:example) do
    @author = Author.new(name: 'Alice', email: 'a@gmail.com', password: 'abcdfg', password_confirmation: 'abcdfg')
  end 

  before {@author.save}

    it 'name should be present' do
      @author.name = nil
      expect(@author).to_not be_valid
    end

    it "is not valid without an email" do 
      @author.email=nil
      expect(@author).to_not be_valid
    end 
  
    it "is not valid if the email address doesn't have a @" do 
      expect(@author.email)==(/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i)
    end 
  end
end
