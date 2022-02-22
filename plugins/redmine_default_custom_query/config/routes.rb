RedmineApp::Application.routes.draw do
  controller :default_url_options_setting, as: 'default_url_options_setting' do
    put ':project_id/default_url_options/update', action: 'update', as: 'update'
  end
end