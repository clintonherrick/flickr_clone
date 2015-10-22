require 'rails_helper'

describe User do
  it { should have_many :posts }
  it { should have_many(:image_attachments).through(:posts) }
  it { should have_many(:comments).through(:image_attachments) }
end
