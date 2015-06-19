namespace :amenities do
  desc "Generate amenities records..."
  
  task generate: :environment do
    ["pool", "rec room", "movie theater", "on site doctor", "time machine"].each do |name|
      Amenity.create(name: name)
    end
  end
end
