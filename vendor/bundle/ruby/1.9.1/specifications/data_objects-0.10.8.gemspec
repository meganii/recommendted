# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "data_objects"
  s.version = "0.10.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirkjan Bussink"]
  s.date = "2011-03-29"
  s.description = "Provide a standard and simplified API for communicating with RDBMS from Ruby"
  s.email = "d.bussink@gmail.com"
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown"]
  s.homepage = "http://github.com/datamapper/do"
  s.require_paths = ["lib"]
  s.rubyforge_project = "dorb"
  s.rubygems_version = "1.8.12"
  s.summary = "DataObjects basic API and shared driver specifications"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, ["~> 2.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<yard>, ["~> 0.5"])
    else
      s.add_dependency(%q<addressable>, ["~> 2.1"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<yard>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<addressable>, ["~> 2.1"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<yard>, ["~> 0.5"])
  end
end
