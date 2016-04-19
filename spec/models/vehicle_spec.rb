require 'rails_helper'

RSpec.describe Vehicle, :type => :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:vehicle)).to be_valid
  end

  it 'is invalid without a year' do
    expect(FactoryGirl.build(:vehicle, year: nil)).to_not be_valid
  end

  subject {FactoryGirl.create(:vehicle)}
  describe "#average_mpg" do
    it "returns nil if there are fewer submissions than required" do
      9.times.each { FactoryGirl.create(:mpg_submission, mpg: 25, vehicle: subject) }
      expect(subject.average_mpg).to be_nil
    end

    it 'returns the average if there are enough submissions' do
      5.times.each { FactoryGirl.create(:mpg_submission, mpg: 25, vehicle: subject) }
      5.times.each { FactoryGirl.create(:mpg_submission, mpg: 30, vehicle: subject) }
      expect(subject.average_mpg).to eq(27.5)
    end
  end
end
