# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesman.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
puts "Salespeople: #{Salesman.all.count}"
salesman = Salesman.new
salesman["first_name"] ="ben"
salesman["last_name"] ="Block"
salesman["email"] = "ben@yest.com"
salesman.save

salesman = Salesman.new
salesman["first_name"] ="laura"
salesman["last_name"] ="wang"
salesman["email"] = "wang@yest.com"
salesman.save

puts "Salespeople: #{Salesman.all.count}"

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2
all_salesmen = Salesman.all
puts all_salesmen.inspect

ben = all_salesmen
puts "#{ben["first_name"]} #{ben["last_name"]}"

for salesman in all_salesmen
    puts "#{salesman["first_name"]} #{salesman["last_name"]}"
end


# 4. modify/update column data for a row in the salespeople table.

ben = Salesman.find_by({"first_name" =>"ben","last_name" =>"Block"})
ben['email'] = "benjamin@northwestern.edu"
ben.save
puts ben['email'] 

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
