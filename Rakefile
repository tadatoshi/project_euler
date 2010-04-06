require 'rubygems'
require 'rake'

require 'lib/project_euler/sums_of_digit_factorials'

namespace :project_euler do
  namespace :sums_of_digit_factorials do
  
    desc "Calculate factorial"
    task :factorial, :integer do |task, args|
      puts ProjectEuler::SumsOfDigitFactorials.new.factorial(args.integer.to_i)
    end
  
  end
end