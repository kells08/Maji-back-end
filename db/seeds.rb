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

allItems = {
  "items": [
    {
      "title": "Droplet Necklace", 
      "image_url": "http://localhost:3001/public/pendant.jpeg",
      "description": "Water droplet pendant in sterling silver on a 26 inch chain. Droplet is 29 mm long.",
      "details": "Available for international shipment.",
      "price": 65,
      "category": "product" },
    {
      "title": "Droplet Earrings", 
      "image_url": "http://localhost:3001/public/earrings.jpeg",
      "description": "Water droplet hoop earrings in sterling silver, for pierced ears. 45 mm long.",
      "details": "Available for international shipment.",
      "price": 45,
      "category": "product" },
    {
      "title": "Droplet Tee", 
      "image_url": "http://localhost:3001/public/tee.jpg",
      "description": "Water droplet printed on a high-quality 100% cotton, classic fitted, crew neck, short sleeve adult unisex t-shirt. Specify size in checkout.",
      "details": "Available for international shipment.",
      "price": 20,
      "category": "product" },
    {
      "title": "Dental Hygiene",
      "image_url": "http://localhost:3001/public/toothbrush.png",
      "description": "Teach our rural communities the importance of dental care and hygiene.",
      "details": "Current City: Sanya Juu, Tanzania. 
      Rural communities are often unaware of the importance of daily dental care. This project allows us to provide toothbrushes, toothpaste and floss to residents, in addition to an instructional demonstration on proper brushing techniques. 
      A $5 contribution will provide toothbrushes, toothpaste, and floss for 2 people. 
      A $10 contribution will provide toothbrushes, toothpaste, and floss for 1 family, or 6 people. 
      A $20 contribution will provide toothbrushes, toothpaste, and floss for about 2 families, or 15 people.",   
      "price": "",
      "category": "project" },
    {
      "title": "Water Purification",
      "image_url": "http://localhost:3001/public/pills.png",
      "description": "Provide water sanitation tablets to rural residents.",
      "details": "Current City: Bukoba, Tanzania. 
      Water from sources such as collected rain, rivers, lakes, wells, or similar can breed many diseases. These effervescent water purification tablets kill micro-organisms to help prevent cholera, typhoid, dysentery and other water borne disease in the communities that rely on these water sources. 
      A $5 contribution will provide 100 tablets to a local family, about a one month supply. 
      A $10 contribution will provide 250 tablets to a local family, about two month's supply. 
      A $50 contribution will provide 1500 tablets to a local family, about one year's supply.",
      "price": "",
      "category": "project" },
    {
      "title": "Malaria Treatment",
      "image_url": "http://localhost:3001/public/medicine.png",
      "description": "Supply malaria tablets to rural clinics.",
      "details": "Current City: Ibwera, Tanzania. 
      Malaria is a preventable and treatable disease transmitted by mosquitos that affects half a billion people worldwide each year. Proper treatment to eradicate the parasite from the body is crucial for preventing death and preventing transmission of the disease. 
      A $20 contribution will provide 100 tablets. 
      A $50 contribution will provide 250 tablets. 
      A $100 contribution will provide 500 tablets.",
      "price": "",
      "category": "project" }
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

  allItems[:items].each do |item|
    Item.create(item)
  end

  allWaterLocations[:waterLocations].each do |waterLocation|
    WaterLocation.create(waterLocation)
  end