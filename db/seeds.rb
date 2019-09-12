User.create!(name:  "Rajanr",
             email: "rajankshl@gmail.com",
             password:              "Loveyou22@",
             password_confirmation: "Loveyou22@",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "rajankshl-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end