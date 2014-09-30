require 'pry'
require 'date'
# Creates a person
class Person
  attr_accessor :first_name, :surname, :dob, :fullname
  attr_reader :emails, :phone_numbers
  
  # Instance Variables
  def initialize(first_name, surname, dob= nil)
      
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @fullname = first_name.capitalize + ' ' + surname.capitalize
    @dob = Date.parse(dob)
    @emails = []
    @phone_numbers = []
   end
  # Add/remove email and number methods
  def add_email(input)
    emails.push input
  end
  
  def add_phone(input)
    phone_numbers.push input
  end
  
  def remove_email(input)
    emails.delete_at input
  end
  
  def remove_phone(input)
    phone_numbers.delete_at input
  end
  
  def to_s
    "#{@fullname} was born on #{dob}. \n Their email addresses are: #{emails}. \n Their phone numbers are #{phone_numbers}"
  end   
  
  def print_details
    puts "#{@fullname}\n"
    puts "#{'-' * fullname.length}"
    puts "Date of Birth: #{@dob.strftime("%d %B %Y")}\n\n\n"
    puts "Email Addresses:"
    @emails.each do |e|
      puts '-'+e 
    end
    puts "\n Phone Numbers: "
    @phone_numbers.each do |p|
      puts '-'+p
    end
    return nil
  end
  
  
class FamilyMember < Person 
    def initialize
    super
    attr_accessor :relationship
  end
end

class AddressBook
  def initialize
    @book= []
  end
  
  def add(p)
    @book.push p
  end
  
  def list
    puts "Address Book \n "
    puts '-------------'
    
  end
  
end
 binding.pry 
      
end