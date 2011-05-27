# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{coffeebeans}
  s.version = "1.0.1.20110527114144"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{markbates}]
  s.date = %q{2011-05-27}
  s.description = %q{coffeebeans was developed by: markbates}
  s.email = %q{mark+github@markbates.com}
  s.extra_rdoc_files = [%q{LICENSE}]
  s.files = [%q{lib/coffeebeans.rb}, %q{LICENSE}]
  s.homepage = %q{http://github.com/markbates/coffeebeans}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{coffeebeans}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script>, [">= 0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.0.0"])
    else
      s.add_dependency(%q<coffee-script>, [">= 0"])
      s.add_dependency(%q<actionpack>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<coffee-script>, [">= 0"])
    s.add_dependency(%q<actionpack>, [">= 3.0.0"])
  end
end
