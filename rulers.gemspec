require_relative 'lib/rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["ashawareb"]
  spec.email         = ["aaa.shawareb@gmail.com"]

  spec.summary       = %q{Rebuilding Rails}
  spec.description   = %q{The Rulers framework from the Rebuilding Rails ebook}
  spec.homepage      = "https://github.com/ashawareb/rulers"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ashawareb/rulers"
  spec.metadata["changelog_uri"] = "https://github.com/ashawareb/rulers"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rack-test"

end
