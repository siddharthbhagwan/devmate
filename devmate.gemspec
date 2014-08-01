$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devmate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devmate"
  s.version     = Devmate::VERSION
  s.authors     = ["siddharth bhagwan"]
  s.email       = ["sid_sss@hotmail.com"]
  s.homepage    = "https://github.com/siddharthbhagwan/devmate"
  s.summary     = "Devmate pops up random quotes on the screen as you work"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "jquery-rails"
  # s.add_dependency "jquery-noty-rails", :git => "https://github.com/trapni/jquery-noty-rails.git"
  s.add_dependency "json"
end
