require 'rake'

Gem::Specification.new do |s|  
  s.name = %q{project_euler}  
  s.version = "0.1.0"  

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=  
  s.authors = ["Tadatoshi Takahashi"]  
  s.date = %q{2010-04-04}  
  s.summary = %q{Solutions to the problems from Project Euler}  
  s.email = %q{tadatoshi.3.takahashi@gmail.com}  
  s.extra_rdoc_files = ["README"]  
  s.files = FileList['lib/**/*.rb', '[A-Z]*', 'spec/**/*'].to_a  
  s.has_rdoc = true
  s.homepage = %q{http://github.com/tadatoshi/project_euler}  
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Project Euler", "--main", "README"]  
  s.require_paths = ["lib"]  
  s.rubygems_version = %q{1.3.5}  
  s.description = <<-END
      Project Euler (http://projecteuler.net/) has variety of mathematical/computer programming problems. 
      This Gem includes solutions to the problems. 
    END

  if s.respond_to? :specification_version then  
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION  
    s.specification_version = 3  
        
    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then  
    else  
    end  
  else  
  end  
end  