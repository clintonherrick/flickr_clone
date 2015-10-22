require 'rails_helper'

describe Post do
  it { should belong_to :user }
  it { should have_many :image_attachments }
  it { should have_many(:comments).through(:image_attachments) }
end
