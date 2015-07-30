FactoryGirl.define do
	factory :user do |f|
		f.email "this@ismy.email"
		f.password "12345678"
	end
end
