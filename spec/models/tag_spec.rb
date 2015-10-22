require 'rails_helper'

describe Tag do
  it { should belong_to :image_attachment}
end
