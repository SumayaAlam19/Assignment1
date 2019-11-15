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
    puts" #{package.name} and #{package.price}"
end

end

def adding (packages)
    packages.each_with_index do |package, index|
        puts "#{index} #{package.name} and #{package.price}"
    end
    puts "Which do you want?"
    input = gets.to_i

    selected_package = packages[input]
    $booking << selected_package
end

$booking = []
program_running = true

while program_running

    puts "Please select a number to see the package type"
    puts "1. Signature"
    puts "2. Super Saver"
    puts "3. Cinematography"
    puts "display. To list all packages"
    puts "exit. To exit"
    package_type_choice = gets.chomp
    case package_type_choice
    when "1"
        adding(Signature_package)
    when "2"
        adding(Super_saver_package)
    when "3"
        adding(Cinematography_package)
    when "display"
        puts "Signature packages:
        #{display_all_packages(Signature_package)}"
        puts "Super Saver packages:
        #{display_all_packages(Super_saver_package)}"
        puts"Cinematography packages:
        #{display_all_packages(Cinematography_package)}"
    when "exit"
        program_running = false
    else
        puts "Invalid option"
    end
end

puts "Final bookings"
display_all_packages($booking)