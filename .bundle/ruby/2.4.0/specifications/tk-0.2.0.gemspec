# -*- encoding: utf-8 -*-
# stub: tk 0.2.0 ruby lib
# stub: ext/tk/extconf.rb ext/tk/tkutil/extconf.rb

Gem::Specification.new do |s|
  s.name = "tk".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "msys2_mingw_dependencies" => "tk" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["SHIBATA Hiroshi".freeze, "Nobuyoshi Nakada".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-08-01"
  s.description = "Tk interface module using tcltklib.".freeze
  s.email = ["hsbt@ruby-lang.org".freeze, "nobu@ruby-lang.org".freeze]
  s.extensions = ["ext/tk/extconf.rb".freeze, "ext/tk/tkutil/extconf.rb".freeze]
  s.files = ["ext/tk/extconf.rb".freeze, "ext/tk/tkutil/extconf.rb".freeze]
  s.homepage = "https://github.com/ruby/tk".freeze
  s.licenses = ["2-clause BSDL".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Tk interface module using tcltklib.".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
  end
end
