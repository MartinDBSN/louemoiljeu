
require "open-uri"


users = [
  {
    username: "kenta",
    email: "kenta@gmail.com",
    password: "kentalebest"

  },
  {
    username: "hugo",
    email: "hugo@gmail.com",
    password: "hugolebest"
  }
]
users.each do |user|
  User.create!(user)
end

puts "Created #{User.count} users!"

games = [
  {
    name: "Médaille d'honneur",
    platform: "StationDeJeu 2",
    genre: "FPS",
    price: 5,
    user_id: User.first.id,
    # photo: "https://image.jeuxvideo.com/images-sm/p2/m/o/mohfp20f.jpg"

  },
  {
    name: "Regarde les chiens",
    platform: "StationDeJeu 4",
    genre: "Action-RPG",
    price: 7,
    user_id: User.last.id,
    # photo: "https://m.media-amazon.com/images/I/71X5SqK1ZeS._AC_UF1000,1000_QL80_.jpg"

  },
  {
    name: "L'appel du devoir 2",
    platform: "Xboite 360",
    genre: "FPS",
    price: 100,
    user_id: User.last.id,
    # photo: "https://upload.wikimedia.org/wikipedia/en/d/d1/Call_of_Duty_2_Box.jpg"

  },
  {
    name: "Besoin de vitesse asphalte",
    platform: "StationDeJeu 4",
    genre: "Course",
    price: 12,
    user_id: User.last.id,
    # photo: "https://media.s-bol.com/qON2J2vwLQ7/962x1200.jpg"

  },
  {
    name: "Habibtant maleveillant 4",
    platform: "StationDeJeu 5",
    genre: "TPS",
    price: 6,
    user_id: User.last.id,
    # photo: "https://m.media-amazon.com/images/I/41vi80KPaWL._AC_SY780_.jpg"

  },
  {
    name: "007 oeil doré",
    platform: "Oui",
    genre: "Action",
    price: 16,
    user_id: User.last.id,
    # photo: "https://m.media-amazon.com/images/I/61ABkSW1grS._AC_UF1000,1000_QL80_.jpg"

  },
  {
    name: "Artisanat minier",
    platform: "Fenêtres",
    genre: "Survivre",
    price: 22,
    user_id: User.last.id,
    # photo: "https://image.jeuxvideo.com/medias/148285/1482845269-1018-jaquette-avant.jpg"

  }
]

images  = ["https://image.jeuxvideo.com/images-sm/p2/m/o/mohfp20f.jpg",
  "https://m.media-amazon.com/images/I/71X5SqK1ZeS._AC_UF1000,1000_QL80_.jpg",
  "https://upload.wikimedia.org/wikipedia/en/d/d1/Call_of_Duty_2_Box.jpg",
  "https://media.s-bol.com/qON2J2vwLQ7/962x1200.jpg",
  "https://m.media-amazon.com/images/I/41vi80KPaWL._AC_SY780_.jpg",
  "https://m.media-amazon.com/images/I/61ABkSW1grS._AC_UF1000,1000_QL80_.jpg",
  "https://image.jeuxvideo.com/medias/148285/1482845269-1018-jaquette-avant.jpg"
]

games.each_with_index do |game, i|
  game = Game.create!(game[:game])
  p game
  image = URI.open(images[i])
  game.photo.attach(io: image, filename: "#{game.name}.jpg")
end

puts "Created #{Game.count} games!"

rentals = [
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 13,
    user_id: User.last.id

  },
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 14,
    user_id: User.first.id

  },
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 15,
    user_id: User.first.id

  },
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 16,
    user_id: User.first.id

  },
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 17,
    user_id: User.first.id

  },
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 18,
    user_id: User.first.id

  },
  {
    starting_date: "Thu, 30 May 2024 10:18:32.391020000 UTC +00:00",
    ending_date: "Fri, 31 May 2024 10:18:32.391020000 UTC +00:00",
    game_id: 19,
    user_id: User.first.id
  }
]

rentals.each do |rental|
  Rental.create!(rental)
end

puts "Created #{Rental.count} rentals!"
