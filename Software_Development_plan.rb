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

Cenematography_package = [Package.new("Standard 1", 650), Package.new("Standard 2", 750), Package.new("Standard 3", 850)]

Signature_package.each do |name, price|
    puts "Your package name is #{name} and price is $#{price}"
end 