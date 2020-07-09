# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'

module OpenProject::Mattermost
  class Engine < ::Rails::Engine
    engine_name :openproject_mattermost

    config.to_prepare do
#     require 'open_project/mattermost/patches'
#     require 'open_project/mattermost/patches/journal_patch'
#     require 'open_project/mattermost/patches/project_patch'
#     require 'open_project/mattermost/patches/user_patch'
#     require 'open_project/mattermost/patches/work_package_patch'

      Dir[File.expand_path("patches/*.rb", File.dirname(__FILE__))].sort.each { |f| require f  }
      Dir[File.expand_path("../../../app/**/*.rb", File.dirname(__FILE__))].sort.each { |f| require f  }
      
      require_relative "./hooks.rb"
    end

    include OpenProject::Plugins::ActsAsOpEngine

    def self.settings
      {
        default: { 'incoming_hooks_tokens'  => nil },
        partial: 'mattermost_settings/common'
      }
    end

    register(
      'openproject-mattermost',
      author_url: 'https://openproject.org',
      requires_openproject: '>= 10.4.0',
      settings: settings
    ) do

      project_module :mattermost_settings do
        permission :update_mattermost_settings, { mattermost_settings: [:get_data, :update_data] }
      end

      menu :project_menu,
           :mattermost_settings,
           { controller: '/mattermost_settings', action: :get_data },
           after: :settings,
           param: :project_id,
           caption: "Mattermost Settings",
           html: {
             class: 'icon2 icon-settings2 settings-menu-item ellipsis',
             id: "mattermost-settings-menu-item"
           },
           if: ->(project) { true }
    end

    patches [:WorkPackage, :Journal, :Project, :User]

    initializer 'mattermost.register_hooks' do
      require 'open_project/mattermost/hooks'
    end
  end
end
