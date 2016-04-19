FactoryGirl.define do
  factory :vehicle do
    model   { FFaker::Vehicle.model }
    make    { FFaker::Vehicle.make  }
    year    { FFaker::Vehicle.year  }
    style   'Car'
  end
end
