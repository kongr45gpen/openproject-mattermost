# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "openproject-mattermost"
  s.version     = "0.9.0"
  s.authors     = [ "Zaproo", "kongr45gpen" ]
  s.date        = "2020-03-02"
  s.email       = "zaproo@zaproo.com"
  s.summary     = 'Integration OpenProject with Mattermost'
  s.description = "Integration OpenProject with Mattermost"
  s.license     = "MIT"
  s.homepage    = "https://github.com/kongr45gpen/pm2mattermost"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency "rails", "~> 6.0"
end


