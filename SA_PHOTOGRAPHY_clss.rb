class Package
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

def display_all_packages (packages)
    result = ""
    packages.each do |package|
        result += " #{package.name} and $#{package.price}\n"
    end
    result
end

def adding (packages, booking)
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

def writing_receipt_to_file(customer_receipt)
    begin 
        File.write("receipt.txt",customer_receipt) 
    rescue StandardError => exception
        puts "failed to save receipt: #{exception}"
    end
end

def printed_receipt(booking)
    receipt = "Final booking is:\n#{display_all_packages(booking)}"
    if booking == []
        receipt  += "You have booked nothing"
    else 
        receipt += " Total price of your package is $#{get_total_price(booking)}."
    end
    receipt 
end