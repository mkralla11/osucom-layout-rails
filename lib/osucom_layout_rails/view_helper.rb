module OsucomLayoutRails
  module ViewHelpers
    def title(default)
      @title && "#{@title} | #{default}" || default
    end
    
    def header_title
      OsucomLayoutRails::Application.config.header_title
    end
    
    def header_subtitle
      OsucomLayoutRails::Application.config.header_subtitle
    end
  end
end