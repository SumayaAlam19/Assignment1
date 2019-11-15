#testing

require_relative "for_me"


def test_signature_package
    signature_package = [Package.new("Elegant 1", 600), Package.new("Elegant 2", 800), Package.new("Elegant 3", 950)]
    expected_result = 1000
    actual_result = get_total_price(signature_package)
    if expected_result == actual_result
        puts "pass"
    else
       puts "fail"
    end
    
end

test_signature_package