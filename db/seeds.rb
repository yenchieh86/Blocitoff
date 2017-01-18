5.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: '111111',
        confirmed_at: Time.now
    )
end

u = User.first

5.times do
    u.items.create(
        name: Faker::Hacker.say_something_smart
    )
end