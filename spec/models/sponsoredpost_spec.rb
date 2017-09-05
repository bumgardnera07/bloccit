require 'rails_helper'

RSpec.describe Sponsoredpost, type: :model do
   let(:title) { RandomData.random_sentence }
   let(:body) { RandomData.random_paragraph }
   let(:price) { Random.rand(10...42) }
   let(:topic) { Topic.create!(name: name, description: description) }

   describe "attributes" do
     it "has title, body, and price attributes" do
       expect(topic).to have_attributes(title: title, body: body, price: price)
     end
   end
end
