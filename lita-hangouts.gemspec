Gem::Specification.new do |spec|
  spec.name          = "lita-hangouts"
  spec.version       = "0.0.1"
  spec.authors       = ["Mark Dimas", "Santiago Archila"]
  spec.email         = ["mark@change.org", "santiago@change.org"]
  spec.description   = %q{A Lita handler for creating an on-demand Google hangout}
  spec.summary       = %q{A Lita handler for creating an on-demand Google hangout}
  spec.homepage      = "http://www.github.com/change/lita-hangouts"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 3.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
