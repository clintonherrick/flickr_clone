FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name  "Doe"
    email "jd@test.com"
    password "test"
    password_confirmation "test"
  end
  factory :image do
    fixture_file_upload( Rails.root + 'spec/fixtures/images/images.jpg', "image/jpg")
  end
end
