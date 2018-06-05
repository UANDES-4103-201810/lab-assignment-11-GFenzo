FactoryBot.define do
  factory :user do
    username "FakeUser"
    email "fake@mail.com"
    password "fakepassword"
  end
# Add other factories in here
  factory :message do
    user_id 1
    date "2018-8-8"
    content "fake content"
  end
end
