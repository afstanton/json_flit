# frozen_string_literal: true

require_relative "lib/json_flit/version"

Gem::Specification.new do |spec|
  spec.name = "json_flit"
  spec.version = JsonFlit::VERSION
  spec.authors = ["Aaron F Stanton"]
  spec.email = ["afstanton@gmail.com"]

  spec.summary = "Rails implementation of json_dynamic_widget"
  spec.description = "A flexible system of using JSON to define the structure of a page."
  spec.homepage = "https://github.com/afstanton/json_flit"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/afstanton/json_flit"
    spec.metadata["changelog_uri"] = "https://github.com/afstanton/json_flit/blob/main/docs/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
    "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'flit_view_components'
end
