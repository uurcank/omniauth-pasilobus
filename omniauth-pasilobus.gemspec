lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/pasilobus/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-pasilobus"
  spec.version       = Omniauth::Pasilobus::VERSION
  spec.authors       = ["uurcankaya"]
  spec.email         = ["support@pasilobus.com"]

  spec.summary       = %q{Omniauth strategy for Pasilobus platform}
  spec.homepage      = "https://www.github.com/pasilobus/omniauth-pasilobus"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.github.com/pasilobus/omniauth-pasilobus"
  spec.metadata["changelog_uri"] = "https://www.github.com/pasilobus/omniauth-pasilobus"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-oauth2", '~> 1.6'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
