FactoryBot.define do
  factory :profile do
    info { Faker::Lorem.sentence }
    association :user

    after(:build) do |item|
      profile.image.attach(io: File.open('public/images/people.jpg'), filename: 'people.jpg')
    end
  end
end
