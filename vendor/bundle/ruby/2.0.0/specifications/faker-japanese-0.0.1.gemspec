# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "faker-japanese"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["tily"]
  s.date = "2011-09-29"
  s.description = "Faker in Japanese"
  s.email = "tily05@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "LICENSE.naist-jdic", "README.md"]
  s.files = ["LICENSE", "LICENSE.naist-jdic", "README.md"]
  s.homepage = "http://github.com/tily/ruby-faker-japanese"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Faker in Japanese"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end
