 FactoryGirl.define do
   factory :vote do
     value {rand(-30..30)}
     content
   end
 end