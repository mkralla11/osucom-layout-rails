module OsucomLayoutRails
  module ViewHelpers
    def title(default)
      @title && "#{@title} | #{default}" || default
    end
    
    def header_title
      Rails::Application.config.osucom_layout.header_title
    end
    
    def header_subtitle
      Rails::Application.config.osucom_layout.header_subtitle
    end
  end
end