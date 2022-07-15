require 'faker'

FactoryBot.define do

  factory :author do |f|
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'secret' }
    password_confirmation { password }
  end
end