require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ProjectEuler::SumsOfDigitFactorials do
  
  context "Factorials calculation" do
    
    before(:each) do
      @sum_of_digit_factorials = ProjectEuler::SumsOfDigitFactorials.new
    end
    
    it "should calculate factorial for the given integer" do
      
      @sum_of_digit_factorials.factorial(3).should == 3 * 2 * 1
      @sum_of_digit_factorials.factorial(2).should == 2 * 1
      @sum_of_digit_factorials.factorial(1).should == 1
      @sum_of_digit_factorials.factorial(0).should == 1
      
    end
    
    it "should calculate f(n), the sum of the factorials of the digits of the given integer" do
      
      @sum_of_digit_factorials.sum_of_factorials_of_digits(342).should == 32
      @sum_of_digit_factorials.sum_of_factorials_of_digits(321).should == 9
      
    end
    
    it "should calculate sf(n), the sum of the digits of the sum of the factorials of the digits of the given integer" do
      
      @sum_of_digit_factorials.sum_of_digits_of_sum_of_factorials(342).should == 3 + 2
      @sum_of_digit_factorials.sum_of_digits_of_sum_of_factorials(321).should == 9
      
    end
    
    it "should calculate g(i), the smallest positive integer n such that sf(n) = i" do
      
      @sum_of_digit_factorials.smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(5).should == 25
      @sum_of_digit_factorials.smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(20).should == 267
      
    end
    
    it "should calculate sg(i), the sum of the digits of g(i)." do
      
      @sum_of_digit_factorials.sum_of_digits_of_smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(5).should == 2 + 5
      @sum_of_digit_factorials.sum_of_digits_of_smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(20).should == 2 + 6 + 7
      @sum_of_digit_factorials.sum_of_digits_of_smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(1).should == 1
      
    end
    
    it "should calculate sigma sg(i), the sum of sg(i)'s" do
      
      @sum_of_digit_factorials.sum_of_sums_of_digits_of_smallest_positive_integers_to_produce_sum_of_digits_of_sum_of_factorials(1..20).should == 156
      
    end
    
  end
  
end