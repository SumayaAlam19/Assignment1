class Package
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

def display_all_packages (packages)
    packages.each do |package|
        puts" #{package.name} and $#{package.price}"
    end

end

def adding (packages, booking)# as we are not putting booking as aglobal one we made a perameter. it is because of testing.
    packages.each_with_index do |package, index|
        puts "#{index+1} #{package.name} and $#{package.price}"
    end
    puts "Please type a number to lock the package OR type exit to exit?"
      input = gets.chomp
if input != "exit"
      selected_package = packages[input.to_i-1]
      booking << selected_package
end
      
end

def get_total_price(packages)
    result = 0
    packages.each do|package|
        result += package.price
    end
    result
end

