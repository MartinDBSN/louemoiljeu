Game.destroy_all
User.destroy_all
p "Database cleaned Peeps"

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
    platform: "PS2",
    genre: "FPS",
    price: 5,
    user_id: User.last.id
},
{
  name: "Regarde les chiens",
  platform: "JoueStation 4",
  genre: "Action-RPG",
  price: 7,
  user_id: User.last.id
},
{
  name: "L'appel du devoir 2",
  platform: "Xboite 360",
  genre: "FPS",
  price: 100,
  user_id: User.last.id
},
{
  name: "Besoin de vitesse asphalte",
  platform: "Xboite 360",
  genre: "Course",
  price: 12,
  user_id: User.last.id
},
{
  name: "Habibtant maleveillant 4",
  platform: "Mac",
  genre: "TPS",
  price: 6,
  user_id: User.last.id
},
{
  name: "007 oeil doré",
  platform: "JoueStation 1",
  genre: "Course",
  price: 16,
  user_id: User.last.id
},
{
  name: "Artisanat minier",
  platform: "Fenêtres",
  genre: "Survivre",
  price: 22,
  user_id: User.last.id
}
]

games.each do |game|
  Game.create!(game)
end

puts "Created #{Game.count} games!"
