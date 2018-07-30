# -*- encoding: utf-8 -*-
# stub: omniauth-marvin 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-marvin".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samy KACIMI".freeze]
  s.bindir = "exe".freeze
  s.date = "2015-11-27"
  s.description = "This gem is an OmniAuth OAuth2 strategy for 42 School. 42 Students can use it to signup/login on their apps.".freeze
  s.email = ["samy.kacimi@gmail.com".freeze]
  s.homepage = "https://github.com/fakenine/omniauth-marvin".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "OmniAuth OAuth2 strategy for 42 School".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, ["= 1.3.1"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
    else
      s.add_dependency(%q<omniauth-oauth2>.freeze, ["= 1.3.1"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.3"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>.freeze, ["= 1.3.1"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
  end
end
