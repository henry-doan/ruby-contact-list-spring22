# Build a contact list
# method for the menu 
# method for the create 
# method view all
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
  # create menu 1) Create a contact 2) View All Contacts 3) Exit
  # conditional 
  # array of hashes for each hash it is a contact 
  # Create a contact 
    # << to add , add to the array 
    # inputs and outputs 
  # view all contacts 
    # all the contacts are in an array 
    # iterate through the array to list out each contact
  # exit
# The menu should loop until the user exits
# loop 
# recursion

@contacts = [
  { first_name: 'bob', last_name: 'do', age: 34 , phone: '123-123-1233'},
  { first_name: 'jill', last_name: 'doe', age: 44, phone: '321-323-3333'},
  { first_name: 'lucy', last_name: 'ray', age: 55, phone: '131-111-2222'}
]

def welcome
  puts "Welcome to the contact list"
  menu
end

def menu 
  puts "1) Create a contact"
  puts "2) View All Contacts"
  puts "3) Exit"
  puts "What do you want to do?"
  menu_choice = gets.strip.to_i
  if menu_choice == 1
    create_contact
  elsif menu_choice == 2 
    view_all_contacts
  elsif menu_choice == 3 
    puts "Have a nice day"
    exit
  else 
    puts "error you should do 1, 2 or 3"
    menu
  end
end

def create_contact
  puts 'Creating a contact'
  puts 'What is the contact first name?'
  first_name_input = gets.strip 
  puts 'What is the contact last name?'
  last_name_input  = gets.strip
  puts "What is the contact age?"
  age_input  = gets.strip.to_i
  puts "What is the contact phone number?"
  phone_input  = gets.strip 

  new_contact = { 
    first_name: first_name_input, 
    last_name: last_name_input,
    age: age_input,
    phone: phone_input
  }

  @contacts << new_contact
  menu
end

def view_all_contacts
  puts "All Contacts"
  puts "-------------------"

  # goes through the items of the array
  @contacts.each do |contact|
    # goes through each key value pair of the contact
    # puts "First name: #{contact[:first_name]}"
    # puts "Last name: #{contact[:last_name]}"
    # puts "Age: #{contact[:age]}"
    # puts "Phone: #{contact[:phone]}"
    contact.each do |key, value|
      puts "#{key}: #{value}"
    end
    puts 
  end
  menu
end

welcome 