require 'ffaker'

namespace :db do
  desc 'db:add_cars[number]'
  task :add_cars, [:count] => [:environment] do |_t, args|
    count = args[:count] || 1
    count.to_i.times do
      Car.create(
        make: FFaker::Vehicle.make,
        model: FFaker::Vehicle.model,
        year: FFaker::Vehicle.year.to_i,
        odometer: FFaker::Random.rand(999_999),
        price: FFaker::Random.rand(99_999),
        description: FFaker::Lorem.phrase,
      )
    end
  end
end
