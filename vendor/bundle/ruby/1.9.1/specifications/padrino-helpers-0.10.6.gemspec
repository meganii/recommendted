# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "padrino-helpers"
  s.version = "0.10.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = "2012-03-15"
  s.description = "Tag helpers, asset helpers, form helpers, form builders and many more helpers for padrino"
  s.email = "padrinorb@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://www.padrinorb.com"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "padrino-helpers"
  s.rubygems_version = "1.8.12"
  s.summary = "Helpers for padrino"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino-core>, ["= 0.10.6"])
      s.add_runtime_dependency(%q<i18n>, ["~> 0.6"])
    else
      s.add_dependency(%q<padrino-core>, ["= 0.10.6"])
      s.add_dependency(%q<i18n>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<padrino-core>, ["= 0.10.6"])
    s.add_dependency(%q<i18n>, ["~> 0.6"])
  end
end
