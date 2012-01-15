require 'osucom_layout_rails/view_helper'

module OsucomLayoutRails
  class Railtie < Rails::Railtie
    initializer "notice-helper.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end