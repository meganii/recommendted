# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "padrino-core"
  s.version = "0.10.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = "2012-03-15"
  s.description = "The Padrino core gem required for use of this framework"
  s.email = "padrinorb@gmail.com"
  s.executables = ["padrino"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["bin/padrino", "README.rdoc"]
  s.homepage = "http://www.padrinorb.com"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "padrino-core"
  s.rubygems_version = "1.8.12"
  s.summary = "The required Padrino core gem"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tilt>, ["~> 1.3.0"])
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.3.1"])
      s.add_runtime_dependency(%q<http_router>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.3"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2.0"])
    else
      s.add_dependency(%q<tilt>, ["~> 1.3.0"])
      s.add_dependency(%q<sinatra>, ["~> 1.3.1"])
      s.add_dependency(%q<http_router>, ["~> 0.10.2"])
      s.add_dependency(%q<thor>, ["~> 0.14.3"])
      s.add_dependency(%q<activesupport>, ["~> 3.2.0"])
    end
  else
    s.add_dependency(%q<tilt>, ["~> 1.3.0"])
    s.add_dependency(%q<sinatra>, ["~> 1.3.1"])
    s.add_dependency(%q<http_router>, ["~> 0.10.2"])
    s.add_dependency(%q<thor>, ["~> 0.14.3"])
    s.add_dependency(%q<activesupport>, ["~> 3.2.0"])
  end
end
