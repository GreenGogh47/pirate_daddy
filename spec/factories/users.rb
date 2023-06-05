FactoryBot.define do
  factory :user do
    name { Faker::TvShows::VentureBros.character }
    phone_number { Faker::PhoneNumber.cell_phone }
    # will return in any of the following formats
    # 333-333-3333
    # (333) 333-3333
    # 1-333-333-3333
    # 333.333.3333
  end
end
