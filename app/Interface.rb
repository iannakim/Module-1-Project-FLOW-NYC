require 'tty-prompt'

class Interface

  attr_reader :prompt
  attr_accessor :student, :insturctor, :yogaclass, :reservation

  def initialize
      @prompt = TTY::Prompt.new
  end

  def welcome
    puts "
    \n
    \n
    Welcome to FLOW NYC
    \n
    \n
    "
    prompt.select ("") do |menu|
      menu.choice "Log in", -> {log_in_helper}
      menu.choice "Sign up", -> {create_user_helper}
      menu.choice "What's Flow NYC?", -> {about_page}
    end
  end
  
  def about_page
    puts "Flow NYC is a virtual class booking app\nthat allows yogis to search for and book\nyoga classes at a click of a button."
    # add menu choice "Go Back"
  end

  def log_in_helper
    #
    #
    #
  end


  def create_user_helper
    personReturnValue =	Student.register()
      until personReturnValue
        personReturnValue = Student.register()
    end
      # puts "Successfully Created!"
      self.student = personReturnValue
    self.main_menu
    end
    
    def main_menu
      student.reload
      system "clear"
        puts "
        \n
        \n
        Welcome, #{student.name}!
        \n
        \n
        "
        prompt.select("What would you like to do?") do |menu|
          menu.choice "View My Upcoming Yoga Classes", -> {display_upcoming_class}
          menu.choice "Book a New Yoga Class", -> {book_new_class}
          menu.choice "View all locations", -> {all_location}
          menu.choice "Log out", -> {byebye}
        end
      end
      
      def display_upcoming_class
      #  all the students reservations
      #  if students reservation is false, put "You don't have any upcoming classes."

      #add menu choice - Book a New Yoga Class
      #add menu choice - Back to Main Menu
      end


      def book_new_class
        prompt.select ("Choose a Location:") do |menu|
          menu.choice "Chelsea", -> {chelsea_location_selected}
          menu.choice "Tribeca", -> {tribeca_location_selected}
          menu.choice "Upper East Side", -> {ues_location_selected}
          menu.choice "Upper West Side", -> {uws_location_selected}
          menu.choice "Back to Main Menu", -> {self.main_menu}
        end
      end


      def all_location
        puts "write all the locations  here"
        #add menu choice - Back to Main Menu
      end



      def byebye
        system "clear"
        Interface.new.welcome
      end




end #end for class
