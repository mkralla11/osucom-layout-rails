require "osucom_layout_rails/app_controller"

module OsucomLayoutRails
  class Engine < Rails::Engine
    Rails.application.config.assets.precompile += ['application-ie.css','application-print.css', 'modernizr-2.0.6.min.js' ]
    
    initializer 'myengine.app_controller' do |app|
      app.config.osucom_layout = ActiveSupport::OrderedOptions.new
      app.config.osucom_layout.site_title = "OSUCOM Layout"
      app.config.osucom_layout.header_title = "OSU COM"
      app.config.osucom_layout.header_subtitle = "College of Medicine"
      
      ActiveSupport.on_load(:action_controller) do
        helper_method "current_user", "logged_in?"
        include OsucomLayoutRails::AppController::InstanceMethods
      end
    end
  end
end
