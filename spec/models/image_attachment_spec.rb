require 'rails_helper'

describe ImageAttachment do
  it { should belong_to :post }
  it { should have_many :comments }
end
