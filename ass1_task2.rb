=begin

create two class user and comapny. that 2 are in the same city. create one method to display city

=end

class User
  def initialize(uname, city)
    @uname = uname
    @city = city
  end
end

class Company
  def initialize(cname, city)
    @cname = cname
    @city = city
  end
  
  def display_city
    puts "The #{@cname} is located in #{@city}"
  end
end

user = User.new("Rutu", "India")
company = Company.new("Bacancy", "India")
company.display_city



