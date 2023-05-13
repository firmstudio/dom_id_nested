# frozen_string_literal: true

require_relative "lib/dom_id_nested/version"

Gem::Specification.new do |spec|
  spec.name = "dom_id_nested"
  spec.version = DomIdNested::VERSION
  spec.authors = ["Eddie Rodriguez"]
  spec.email = ["8533760+nwoeddie@users.noreply.github.com"]

  spec.summary = "Upgraded `dom_id` helper for Ruby on Rails"
  spec.description = "A gem that enhances the Rails dom_id helper method, allowing it to accept multiple ActiveRecord models or custom strings as arguments."
  spec.homepage = "https://github.com/firmstudio/dom_id_nested"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "actionview"
  spec.add_development_dependency "standard"
end
