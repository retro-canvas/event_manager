puts "Event Manager Initialized!"

File.exists?('event_attendees.csv') ? (contents = File.read('event_attendees.csv')) : (puts "Error: No associated files detected!")

puts contents