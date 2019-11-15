
require "colorize"
require "tty-prompt"

prompt = TTY::Prompt.new

class Package
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

# package1 = Package.new("Elegant 1", 600)  # making instances of class
# package2 = Package.new("Elegant 2", 800)
# package3 = Package.new("Elegant 3", 950)


# pack= [package1,package2,package3] #or like below
Signature_package = [Package.new("Elegant 1", 600), Package.new("Elegant 2", 800), Package.new("Elegant 3", 950)]

Super_saver_package = [Package.new("Super Saver 1", 300), Package.new("Super Saver 2", 400), Package.new("Super Saver 3", 500)]

Cinematography_package = [Package.new("Standard 1", 650), Package.new("Standard 2", 750), Package.new("Standard 3", 850)]





def display_all_packages (packages)
    packages.each do |package|
        puts" #{package.name} and $#{package.price}"
    end

end

def adding (packages)
    packages.each_with_index do |package, index|
        puts "#{index+1} #{package.name} and $#{package.price}"
    end
    puts "Please Select a number to lock the package OR type exit to exit?"
      input = gets.chomp
if input != "exit"
      selected_package = packages[input.to_i-1]
      $booking << selected_package
end
      
end

$booking = []
program_running = true

while program_running

    puts "Please type display to see all the options and then select a number to choose the package type.You can also type exit to exit "
    
    package_type_choice = prompt.select("choose your package", ["Signature", "Super Saver","Cinematography","display","exit"])

    
    

    case package_type_choice
    when "display"
        puts "Displaying signature packages"
        display_all_packages(Signature_package)

        puts "Displaying super saver packages"
        display_all_packages(Super_saver_package)

        puts "Displaying cinematography packages"
        display_all_packages(Cinematography_package)
    when "Signature"
        adding(Signature_package)
    when "Super Saver"
        adding(Super_saver_package)
    when "Cinematography"
        adding(Cinematography_package)
    when "exit"
        program_running = false
    else
        puts "Invalid option"
    end
end

#time and date
#time=[10.00-02.00]
#price
def get_total_price(packages)
    result = 0
    packages.each do|package|
        result += package.price
    end
    result
end

puts "Final bookings:"
display_all_packages($booking)
if $booking == []
    puts "You have booked nothing"
end

puts " total price of your package is $#{get_total_price($booking)}."
