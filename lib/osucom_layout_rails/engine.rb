require 'compass-rails'
require 'bootstrap-rails'
require "osucom_layout_rails/app_controller"

module OsucomLayoutRails
  class Engine < Rails::Engine
    
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile += ['application-ie.css','application-print.css', 'modernizr.js', 'modernizr-2.0.6.min.js' ]
    end
    
    initializer 'myengine.app_controller' do |app|
      app.config.assets.paths << File.expand_path("../../vendor/assets/fonts",__FILE__)
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
