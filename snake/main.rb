require "faker"

Faker::Name.name      #=> "Christophe Bartell"

Faker::Internet.email #=> "kirsten.greenholt@corkeryfisher.info"

# NOTE: Faker::HarryPotter.spell is deprecated; 
# use Faker::Movies::HarryPotter.spell instead. 
# It will be removed on or after 2019-01-01.

# puts Faker::HarryPotter.spell #is deprecated
puts Faker::Movies::HarryPotter.spell