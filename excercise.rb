require 'pry'
require 'date'
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
  # Add email and number methods
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
    puts "#{@fullname}\n#{'-' * fullname.length}\n Date of Birth: #{@dob.strftime("%d %B %Y")}\n \n Email Addresses: \n- #{emails.join("\n- ")}\n \n Phone Numbers: \n- #{phone_numbers.join("\n- ")}"
  end
class FamilyMember < Person
  def initialize
    super
    @relationship
  end
end
 binding.pry 
      
end