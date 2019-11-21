require_relative "SA_PHOTOGRAPHY_clss"
require "colorize"
require "tty-prompt"

prompt = TTY::Prompt.new



Signature_package = [Package.new("Elegant 1", 600), Package.new("Elegant 2", 800), Package.new("Elegant 3", 950)]

Super_saver_package = [Package.new("Super Saver 1", 300), Package.new("Super Saver 2", 400), Package.new("Super Saver 3", 500)]

Cinematography_package = [Package.new("Standard 1", 650), Package.new("Standard 2", 750), Package.new("Standard 3", 850)]






puts "Welcome to SA PHOTOGRAPHY".colorize(:blue)
booking = []
program_running = true


while program_running
    puts "Please select display to see all the packages or select a package name to choose the package.You can select exit to exit. ".colorize(:blue)
    
    package_type_choice = prompt.select("Select below", ["display","Signature","Super Saver","Cinematography","exit"])

    
    

    case package_type_choice
    when "display"
        puts "Displaying signature packages"
       puts display_all_packages(Signature_package)

        puts "Displaying super saver packages"
        puts display_all_packages(Super_saver_package)

        puts "Displaying cinematography packages"
        puts display_all_packages(Cinematography_package)
    when "Signature"
        adding(Signature_package, booking)
    when "Super Saver"
        adding(Super_saver_package, booking)
    when "Cinematography"
        adding(Cinematography_package, booking)
    when "exit"
        program_running = false
    else
        puts "Invalid option"
    end
end



# puts "Final bookings:"
# display_all_packages(booking)
# if booking == []
#     puts "You have booked nothing"
# end

# puts " total price of your package is $#{get_total_price(booking)}."

def printed_receipt(booking)
    receipt = "Final booking is:\n#{display_all_packages(booking)}"
    if booking == []
    receipt  += "You have booked nothing"
    else 
        receipt += " Total price of your package is $#{get_total_price(booking)}."
    end
    receipt 
end
customer_receipt = printed_receipt(booking)
puts customer_receipt.colorize(:blue)


writing_receipt_to_file(customer_receipt)
 













