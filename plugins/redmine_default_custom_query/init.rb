Redmine::Plugin.register :redmine_default_url_options do
  name 'Redmine Default Custom Query'
  author 'Katsuya Hidaka'
  description 'Redmine plugin for setting default custom query of Issues for each project'
  version '1.3.0'
  requires_redmine '3.1'
  url 'https://github.com/hidakatsuya/redmine_default_url_options'
  author_url 'https://twitter.com/hidakatsuya'

  project_module :default_url_options do
    permission :manage_default_query, { default_url_options_setting: [ :update ] }, require: :member
  end
end

require_relative 'lib/default_url_options'
