require_relative 'lib/whatwg_url/version'

Gem::Specification.new do |spec|
  spec.name          = "whatwg_url"
  spec.version       = WhatwgUrl::VERSION
  spec.authors       = ["shuheiokuda0704"]
  spec.email         = ["shuheiokuda0704@gmail.com"]

  spec.summary       = %q{A module for URL based on WHATWG URL Living Standard}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/shuheiokuda0704/whatwg_url"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shuheiokuda0704/whatwg_url"
  spec.metadata["changelog_uri"] = "https://github.com/shuheiokuda0704/whatwg_url/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
