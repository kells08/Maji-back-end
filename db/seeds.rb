# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

allUsers = {
  "users": [
    {
      "name": "Kelly Lwakatare", 
      "username": "kells",
      "password": "hello", 
      "phone": "555-555-5555",
      "email": "kellylwakatare@example.com", 
      "street": "123 Road St.", 
      "city": "Houston", 
      "state": "TX", 
      "country": "United States", 
      "postcode": "77777"
    }
  ]
}

allProducts = {
  "products": [
    {
      "title": "Droplet Necklace", 
      "description": "Water droplet pendant in sterling silver on a 26 inch chain. Teardrop is 29 mm long.",
      "price": 65 },
    {
      "title": "Droplet Earrings", 
      "description": "Water droplet hoop earrings in sterling silver, for pierced ears. 45 mm long.",
      "price": 45 },
    {
      "title": "Droplet Tee", 
      "description": "Water droplet printed on a high-quality 100% cotton, classic fitted, crew neck, short sleeve adult unisex t-shirt.",
      "price": 20 }
  ]}

  # these projects are not yet seeded!!  (done afterward)
  allProjects = {
    "projects": [
      {
        "title": "Dental Hygiene",
        "city": "Sanya Juu",
        "description": "Teach our rural communities the importance of dental care and hygiene.",
        "details": "Rural communities are often unaware of the importance of daily dental care. This project allows us to provide toothbrushes and toothpaste to residents, in addition to an instructional demonstration on proper brushing techniques.",   
        "fund1": "A $5 contribution will provide toothbrushes, toothpaste, and floss for 2 people.",
        "fund2": "A $10 contribution will provide toothbrushes, toothpaste, and floss for 1 family, or 6 people",
        "fund3": "A $20 contribution will provide toothbrushes, toothpaste, and floss for about 2 families, or 15 people",
      },
      {
        "title": "",
        "city": "",
        "description": "",
        "details": "",
        "fund1": "",
        "fund2": "",
        "fund3": ""
      }
    ]
  }

  allWaterLocations = {
    "waterLocations": [
      {
        "geolocation": "-3.884567, 37.645575",
        "pluscode": "4J8W+56",
        "city": "Usangi",
        "country": "Tanzania",
        "details": "east of B1",
        "active": true,
        "hours": "24/7" },
      {
        "geolocation": "-3.555579, 37.551945",
        "pluscode": "CHV2+QQ",
        "city": "Mwanga",
        "country": "Tanzania",
        "details": "B1 bridge",
        "active": true,
        "hours": "24/7" }, 
      {
        "geolocation": "-3.558535, 37.552250",
        "pluscode": "CHR2+HW",
        "city": "Mwanga",
        "country": "Tanzania",
        "details": "east of B1, near the old house",
        "active": true,
        "hours": "24/7" },
      {
        "geolocation": "-3.558184, 37.550495",
        "pluscode": "CHR2+P5",
        "city": "Mwanga",
        "country": "Tanzania",
        "details": "west of B1, near the new house",
        "active": true,
        "hours": "24/7" },
      {
        "geolocation": "-3.556403, 37.548941",
        "pluscode": "CGVX+CH",
        "city": "Mwanga",
        "country": "Tanzania",
        "details": "west of B1 near the largest tree",
        "active": true,
        "hours": "24/7" }, 
      {
        "geolocation": "-3.550989, 37.551848",
        "pluscode": "CHX2+JP",
        "city": "Kifaru",
        "country": "Tanzania",
        "details": "kifaru chini, next to the pharmacy",
        "active": true,
        "hours": "7am-2pm" }
    ]
  }

  allUsers[:users].each do |user|
    User.create(user)
  end

  allProducts[:products].each do |product|
    Product.create(product)
  end

  allWaterLocations[:waterLocations].each do |waterLocation|
    WaterLocation.create(waterLocation)
  end