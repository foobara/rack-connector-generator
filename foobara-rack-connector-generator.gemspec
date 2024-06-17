require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-rack-connector-generator"
  spec.version = Foobara::Generators::RackConnectorGenerator::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Generates a Foobara rack_connector"
  spec.homepage = "https://github.com/foobara/generators-rack-connector-generator"
  spec.license = "MIT"
  spec.required_ruby_version = ">= #{File.read("#{__dir__}/.ruby-version")}"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.add_dependency "foobara"
  spec.add_dependency "foobara-files-generator"

  spec.files = Dir[
  "lib/**/*",
  "src/**/*",
  "LICENSE.txt"
  ]

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
