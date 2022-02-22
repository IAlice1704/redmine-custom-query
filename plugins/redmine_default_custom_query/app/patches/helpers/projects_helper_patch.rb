require_dependency 'projects_helper'

module DefaultCustomQuery
  module ProjectsHelperPatch
    extend ActiveSupport::Concern

    included do
      unloadable
      alias_method:project_settings_tabs, :default_query_setting_tab
    end

    def project_settings_tabs_with_default_query_setting_tab
      tabs = project_settings_tabs_without_default_query_setting_tab

      if User.current.allowed_to?(:manage_default_query, @project) &&
          @project.module_enabled?(:default_url_options)
        tabs << {
          name: 'default_url_options',
          action: :manage_default_query,
          partial: 'default_url_options_setting/form',
          label: :'default_url_options.label_setting'
        }
      end
      tabs
    end
  end
end

DefaultCustomQuery::ProjectsHelperPatch.tap do |mod|
  ProjectsHelper.send :include, mod unless ProjectsHelper.include?(mod)
end
