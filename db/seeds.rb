# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    Product.create([{ 
      name: "Chateau Yqem", 
      color: "Blanc", 
      description: "Opulent mais d'une grande fraîcheur, dense mais d'une belle acidité.", 
      price: 473
    },
    { 
      name: "Chateau Haut-Brion", 
      color: "Rouge", 
      description: "C'est l'un des vins les plus finement structurés.", 
      price: 1080
    },
    { 
      name: "Chateau Smith Haut Lafitte", 
      color: "Rouge", 
      description: "Un monument qui allie puissance et élégance. Un régal", 
      price: 110
    }
    ])