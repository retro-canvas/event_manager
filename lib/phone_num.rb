# Phone number validation
require 'csv'

puts 'Phone Number Validation initialized.'

# contents = CSV.open('event_attendees.csv', headers: true)
# contents.each do |row|
#   phone = row[5].gsub(/[\s,.()-]/ ,"")
#   puts phone
# end
def clean_phone_num(number)

    number.gsub!(/[^\d]/,'')

    if number.length == 10
        number
    elsif number.length == 11 && number[0] == "1"
        number[1..10]
    else
      "Invalid Number."
  end
  
end

contents = CSV.open(
    'event_attendees.csv',
    headers: true,
    header_converters: :symbol
  )
  
  contents.each do |row|
    phone = clean_phone_num(row[:homephone])
    puts phone
  end
  