Gem::Specification.new do |spec|
  spec.name        = "studio_game"
  spec.version     = "1.0.0"
  spec.author      = "Lazir Pascual"
  spec.email       = "support@pragmaticstudio.com"
  spec.summary     = "A command-line, randomized game."
  spec.homepage    = "https://pragmaticstudio.com"
  spec.license     = "MIT"

  spec.files       = Dir["{bin,lib}/**/*"] + %w[LICENSE.txt README.md]
  spec.executables = ["studio_game"]

  spec.required_ruby_version = ">= 3.2.0"
end
