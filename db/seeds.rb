puts "🌱 Seeding games..."

# Seed your database here
5.times do
    user = User.create()
end

2.times do
    #game = Game.create()

    Game.create(
        title: "Assassins's Creed: Brotherhood", 
        platform: "PC", 
        genre: "Action Adventure", 
        price: 19.99
    )

    Game.create(
        title: "Call of Duty: Black Ops", 
        platform: "Playstation, XBOX, PC", 
        genre: "FPS", 
        price: 39.99
    )

    Game.create(
        title: "Minecraft", 
        platform: "PC", 
        genre: "Sandbox", 
        price: 26.95
    )

    Game.create(
        title: "Counter-Strike: Global Offensive", 
        platform: "PC", 
        genre: "FPS", 
        price: 0.00
    )

    Game.create(
        title: "Zelda: Breath of the Wild", 
        platform: "Switch", 
        genre: "Action-Adventure", 
        price: 19.99
    )

    Game.create(
        title: "Watch_Dogs", 
        platform: "Playstation, XBOX, PC", 
        genre: "Action-Adventure", 
        price: 29.99
    )

    Game.create(
        title: "Destroy All Humans! 2 -  Reprobed", 
        platform: "PC", 
        genre: "Acion-Adevnture", 
        price: 39.99
    )

    Game.create(
        title: "Days Gone", 
        platform: "Playstation, XBOX, PC", 
        genre: "Action-Adventure", 
        price: 49.99
    )
end

puts "✅ Done seeding!"