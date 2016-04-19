require 'rails_helper'

RSpec.describe Vehicle, :type => :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:vehicle)).to be_valid
  end

  it 'is invalid without a year' do
    expect(FactoryGirl.build(:vehicle, year: nil)).to_not be_valid
  end
end
