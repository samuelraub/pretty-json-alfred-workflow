Gem::Specification.new do |s|
  s.name          = 'pj'
  s.version       = '1.0.0'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Prettify JSON'
  s.description   = "Prettify JSON from the command line"
  s.authors       = ["Samuel Raub"]
  s.email         = ["samuel.raub@gmail.com"]
  s.license       = 'MIT'
  s.files         = Dir.glob("{lib,bin}/**/*")
  s.require_path  = 'lib'
  s.executables   = ["pj"]
end
