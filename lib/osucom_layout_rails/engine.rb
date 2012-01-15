require "osucom_layout_rails/app_controller"

module OsucomLayoutRails
  class Engine < Rails::Engine
    initializer 'myengine.app_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        helper_method "current_user", "logged_in?"
        include OsucomLayoutRails::AppController::InstanceMethods
      end
    end
  end
end
