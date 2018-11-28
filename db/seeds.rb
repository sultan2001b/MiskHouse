# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Program.destroy_all
# ga = Program.create(name: "GA",img: null,short_description: "short desc",long_description: "long desc");
# udaCity = Program.create(name: "UdaCity",img: null,short_description: "short desc",long_description: "long desc");

Project.destroy_all
proj1 = Project.create(name: "Tourontour", url: "null", description: "agme to to hfdfhdjdhgjdh jjd", language: "Ruby")
proj2 = Project.create(name: "farforfar", url: "null", description: "agme to to go far from fars ", language: "Javascript")
proj3 = Project.create(name: "DesertExplorer", url: "null", description: "a story about fdfhdjfhdsjf ", language: "Javascript")
