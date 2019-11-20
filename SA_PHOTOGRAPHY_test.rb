

require_relative "SA_PHOTOGRAPHY_clss"


def test_signature_package
    signature_package = [Package.new("Elegant 1", 600), Package.new("Elegant 2", 800), Package.new("Elegant 3", 950)]
    expected_result = 2350
    actual_result = get_total_price(signature_package)
    if expected_result == actual_result
        puts "pass"
    else
       puts "fail"
    end
    
end

test_signature_package

def test_writing_receipt
    if File.exist?("receipt.txt")
        File.delete("receipt.txt")
    end

    writing_receipt_to_file("our test fake receipt")
    if  File.exists?("receipt.txt") 
        puts "pass"
    else
       puts "fail"
    end
end

test_writing_receipt



