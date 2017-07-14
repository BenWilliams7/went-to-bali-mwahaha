class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    Product.destroy_all
    statue_images = [
      'http://68.media.tumblr.com/2d9c453347594e8630249cc5ad73d316/tumblr_ndmowq5IuD1rui49ao1_1280.jpg'
    ]
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: statue_images.sample)
    end

  end
end

Seed.begin
