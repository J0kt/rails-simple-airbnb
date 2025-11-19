require 'faker'

puts "Nettoyage de la base de données..."
Flat.destroy_all

puts "Création de 10 appartements de rêve..."

image_urls = [
  "https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200",
  "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200",
  "https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200",
  "https://images.unsplash.com/photo-1501183638710-841dd1904471?w=1200",
  "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=1200",
  "https://images.unsplash.com/photo-1484154218962-a1c002085d2f?w=1200",
  "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=1200",
  "https://images.unsplash.com/photo-1502005229766-3c8ef56462b1?w=1200",
  "https://images.unsplash.com/photo-1460317442991-0ec209397118?w=1200",
  "https://images.unsplash.com/photo-1560185007-cde436f6a4d0?w=1200"
]

10.times do |index|
  flat = Flat.create!(
    name: Faker::Travel::TrainStation.name(type: 'metro') + " Loft",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price_per_night: rand(40..200),
    number_of_guests: rand(1..6),
    picture_url: image_urls[index]
  )
  puts "Appartement créé : #{flat.name}"
end

puts "Terminé ! #{Flat.count} appartements sont en base."
