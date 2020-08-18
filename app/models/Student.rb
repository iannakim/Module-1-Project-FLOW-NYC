require 'tty-prompt'

class Student < ActiveRecord::Base

  has_many :reservations
  has_many :yogaclasses, through: :reservations
  has_many :instructors, through: :reservations


  def self.register
    studentInfo = TTY::Prompt.new.ask("Please create a new username:")
    levelInfo =  TTY::Prompt.new.ask("What is your yoga level?\n(Type 'B' for Beginner - 'I' for Intermediate - 'A' for Advanced)")
    
    if Student.find_by(name: studentInfo)
     puts "Sorry, it looks like that username already exists in our database."
    else
      Student.create(name: studentInfo, level: levelInfo)
    end
  end
    


end
