# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(name: "C",
    descripton:
    %{
        sdgsfsdacvsfAFBSCASDFSGSVSADSGDBSDZCF
    },
    image: 'white.png',
    price:28.00)



Product.create!(name:"C1",
    descripton:
    %{
        sdgsfsdacvsfAFBSCASDFSGSVSADSGDBSDZCF
    },
    image: 'hound.jpg',
    price:28.00)


Product.create!(name:"C2",
    descripton:
    %{
        sdgsfsdacvsfAFBSCASDFSGSVSADSGDBSDZCF
    },
    image: 'beast.jpg',
    price:28.00)

