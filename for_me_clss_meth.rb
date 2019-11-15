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

Signature_package = [Package.new("Elegant 1", 600), Package.new("Elegant 2", 800), Package.new("Elegant 3", 950)]

Super_saver_package = [Package.new("Super Saver 1", 300), Package.new("Super Saver 2", 400), Package.new("Super Saver 3", 500)]

Cinematography_package = [Package.new("Standard 1", 650), Package.new("Standard 2", 750), Package.new("Standard 3", 850)]

def get_total_price(packages)
    result = 0
    packages.each do|package|
        result += package.price
    end
    result
end

def display_all_packages (packages)
    packages.each do |package|
        puts" #{package.name} and $#{package.price}"
    end

end
def adding (packages)
    packages.each_with_index do |package, index|
        puts "#{index+1} #{package.name} and $#{package.price}"
    end
    puts "Please type a number to lock the package OR type exit to exit?"
      input = gets.chomp
if input != "exit"
      selected_package = packages[input.to_i-1]
      $booking << selected_package
end
      
end

$booking = []