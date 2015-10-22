require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.configure do |config|
  config.before(:each, :login) do
    FactoryGirl.create(:user)
    visit posts_path
    click_on 'Sign In'
    fill_in 'email', with: 'jd@test.com'
    fill_in 'password', with: 'test'
    click_on 'Submit'
  end
end


describe ' post method for images' do
  include CarrierWave::Test::Matchers
  it 'allows users to upload images to their account', login: true do
  click_link 'post'
  fill_in 'post_title', with: "New Post"
  click_



  end
end
