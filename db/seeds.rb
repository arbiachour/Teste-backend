10.times do
Myvehicule.create({
brand: Faker::Vehicle.manufacture,
vehicule: Faker::Vehicle.model,
year:Faker::Vehicle.year,
description: Faker::Vehicle.car_options,
sold: Faker::Boolean.boolean
})
end
