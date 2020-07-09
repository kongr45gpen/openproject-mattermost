# -*- encoding: utf-8 -*-
# stub: openproject-mattermost 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "openproject-mattermost".freeze
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Zaproo".freeze, "kongr45gpen".freeze]
  s.date = "2020-07-10"
  s.description = "Integration OpenProject with Mattermost".freeze
  s.email = "zaproo@zaproo.com".freeze
  s.files = ["CHANGELOG.md".freeze, "README.md".freeze, "app/controllers/incoming_hooks_controller.rb".freeze, "app/controllers/mattermost_settings_controller.rb".freeze, "app/models/mattermost_event.rb".freeze, "app/models/mattermost_setting.rb".freeze, "app/models/mattermost_user.rb".freeze, "app/models/projects_mattermost_setting.rb".freeze, "app/views/mattermost_settings".freeze, "app/views/mattermost_settings/_common.html.erb".freeze, "app/views/mattermost_settings/form.html.erb".freeze, "app/workers/send_mattermost_message_job.rb".freeze, "config/locales/en.yml".freeze, "config/routes.rb".freeze, "db/migrate/20170123214231_add_mattermost_hook_url_to_project.rb".freeze, "db/migrate/20170125213517_add_mattermost_settings.rb".freeze, "db/migrate/20170125222241_fill_mattermost_settings.rb".freeze, "db/migrate/20170125223712_remove_mattermost_hook_url_from_project.rb".freeze, "db/migrate/20170130205401_fill_incoming_hooks_settings.rb".freeze, "db/migrate/20170131214210_add_mattermost_users.rb".freeze, "db/migrate/20170202214424_move_token_to_common_settings.rb".freeze, "db/migrate/20170218234501_add_mattermost_events.rb".freeze, "lib/open_project/mattermost".freeze, "lib/open_project/mattermost.rb".freeze, "lib/open_project/mattermost/engine.rb".freeze, "lib/open_project/mattermost/hooks.rb".freeze, "lib/open_project/mattermost/patches".freeze, "lib/open_project/mattermost/patches.rb".freeze, "lib/open_project/mattermost/patches/journal_patch.rb".freeze, "lib/open_project/mattermost/patches/project_patch.rb".freeze, "lib/open_project/mattermost/patches/user_patch.rb".freeze, "lib/open_project/mattermost/patches/work_package_patch.rb".freeze, "lib/open_project/mattermost/version.rb".freeze, "lib/openproject-mattermost.rb".freeze]
  s.homepage = "https://github.com/kongr45gpen/mattermost-openproject".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Integration OpenProject with Mattermost".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, ["~> 6.0"])
  else
    s.add_dependency(%q<rails>.freeze, ["~> 6.0"])
  end
end
