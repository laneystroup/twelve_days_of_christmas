Gem::Specification.new do |s|
  s.name        = 'twelve_days_of_christmas'
  s.version     = '0.0.0'
  s.summary     = "The Twelve Days of Christmas, Refactored"
  s.description = 'This is a fun attempt at refactoring the song "The Twelve Days of Christmas."'
  s.authors     = ["Laney Stroup"]
  s.email       = 'laney@stroupsolutions.com'
  s.files       = ["lib/twelve_days_of_christmas.rb"] + Dir['lib/**/*']
  s.executables << 'run'
  s.homepage    = "https://github.com/laneystroup/twelve_days_of_christmas"
  s.license       = 'MIT'
end
