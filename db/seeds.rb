Game.destroy_all
p "Database cleaned Peeps"


games = [
  {
    name: "Médaille d'honneur",
    platform: "PS2",
    genre: "FPS",
    price: 5
},
{
  name: "Regarde les chiens",
  platform: "JoueStation 4",
  genre: "Action-RPG",
  price: 7
},
{
  name: "L'appel du devoir 2",
  platform: "Xboite 360",
  genre: "FPS",
  price: 100
},
{
  name: "Besoin de vitesse asphalte",
  platform: "Xboite 360",
  genre: "Course",
  price: 12
},
{
  name: "Habibtant maleveillant 4",
  platform: "Mac",
  genre: "TPS",
  price: 6
},
{
  name: "007 oeil doré",
  platform: "JoueStation 1",
  genre: "Course",
  price: 16
},
{
  name: "Artisanat minier",
  platform: "Fenêtres",
  genre: "Survivre",
  price: 22
}
]

games.each do |game|
  Game.create!(game)
end
puts "Created #{Game.count} games!"
