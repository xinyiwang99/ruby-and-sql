# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
apple = Company.find_by({"name"=> "Apple"})
puts apple.inspect

contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] ="Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Lowie"
contact["last_name"] ="Me"
contact["email"] = "Lowie@apple.com"
contact["company_id"] = apple["id"]
contact.save

amazon = Company.find_by({"name" => "Amazon"})

contact = Contact.new
contact["first_name"] = "Tom"
contact["last_name"] ="Ray"
contact["email"] = "Tom@apple.com"
contact["company_id"] = amazon["id"]
contact.save

puts "companies: #{Company.all.count}"
puts "contacts:#{Contact.all.count}"

all_contacts = Contact.all
puts all_contacts.all

# 1. insert new rows in the contacts table with relationship to a company

# 2. How many contacts work at Apple?
apple_contacts = Contact.where ({"company_id"=> apple["id"]})
puts "Apple contacts : #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?
for contact in apple_contacts
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    puts "#{first_name} #{last_name}"
end
