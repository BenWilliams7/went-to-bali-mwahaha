class Seed
  Order.destroy_all
  User.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.generate_admin
  end

  def generate_products
    Product.destroy_all
    statue_images = [
      'http://www.ancientgreece.com/media/img/scul2.jpg'
    ]
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: statue_images.sample)
    end
  end

  def generate_admin
    User.create!(
      name: "Admin",
      email: "test@test.com",
      password: "testtest",
      password_confirmation: "testtest",
      admin: true
    )
  end
end


Seed.begin
