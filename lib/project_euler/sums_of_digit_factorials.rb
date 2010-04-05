module ProjectEuler
  
  # = Problem 254: Sums of Digit Factorials
  class SumsOfDigitFactorials
    
    def initialize
      @factorials = {}
      @sums_of_factorials_of_digits = {}
      @sum_of_digits_of_sum_of_factorials = {}
      @sum_of_digits = {}
    end

    # = Calculates factorial for the given integer.
    # ==== Example:
    #   3! = 6: factorial(3)
    def factorial(integer)
      @factorials.fetch(integer) do |integer|      
        @factorials[integer] = (integer == 0 ? 1 : integer.downto(1).inject(:*))
      end
    end

    # = f(n)
    #  Calculates the sum of the factorials of the digits of n.
    # === Example:
    #   f(342) = 3! + 4! + 2! = 32: sum_of_factorials_of_digits(342)
    def sum_of_factorials_of_digits(integer)
      @sums_of_factorials_of_digits.fetch(integer) do |integer|
        @sums_of_factorials_of_digits[integer] = integer.to_s.chars.to_a.inject(0) { |sum, digit| sum + factorial(digit.to_i) }
      end
    end

    # = sf(n)
    #  Calculates the sum of the digits of f(n).
    # === Example:
    #   sf(342) = 3 + 2 = 5: sum_of_digits_of_sum_of_factorials(342)
    def sum_of_digits_of_sum_of_factorials(integer)
      @sum_of_digits_of_sum_of_factorials.fetch(integer) do |integer|
        @sum_of_digits_of_sum_of_factorials[integer] = sum_of_digits(sum_of_factorials_of_digits(integer))
      end
    end
    
    # = g(i)
    #  Calculates the smallest positive integer n such that sf(n) = i.
    # === Example:
    #   g(5) = 25: smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(5)  
    def smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(integer)      
      # e.g. In order to have integer = 20, result must have at least 2 digit because 20 is the sum of the digits, which can have only 1 to 9.
      result = 10 * (integer / 10) + 1 
      result += 1 until sum_of_digits_of_sum_of_factorials(result) == integer
      result
    end
    
    # = sg(i)
    #  Calculates the sum of the digits of g(i).
    # === Example:
    #   sg(5) = 2 + 5 = 7: sum_of_digits_of_smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(5)
    def sum_of_digits_of_smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(integer)
      sum_of_digits(smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(integer))
    end
    
    # = ∑sg(i)
    #  Calculates the sum of the sums of digits of g(i). 
    #
    # <tt>range</tt>:: e.g. 1..20 for 1 ≤ i ≤ 20
    #
    # === Example:
    #   ∑sg(i) for 1 ≤ i ≤ 20 is 156.: sum_of_sums_of_digits_of_smallest_positive_integers_to_produce_sum_of_digits_of_sum_of_factorials(1..20)
    def sum_of_sums_of_digits_of_smallest_positive_integers_to_produce_sum_of_digits_of_sum_of_factorials(range)
      range.inject(0) { |sum, integer| sum + sum_of_digits_of_smallest_positive_integer_to_produce_sum_of_digits_of_sum_of_factorials(integer) }
    end

    private
      def sum_of_digits(integer)
        @sum_of_digits.fetch(integer) do |integer|
          @sum_of_digits[integer] = integer.to_s.chars.to_a.inject(0) { |sum, digit| sum.to_i + digit.to_i }
        end
      end
  
  end
  
end