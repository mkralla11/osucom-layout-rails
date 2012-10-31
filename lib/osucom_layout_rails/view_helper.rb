module OsucomLayoutRails
  module ViewHelpers
    def title(default)
      @title && "#{@title} | #{default}" || default
    end
    
    def header_title
      Rails.application.config.osucom_layout.header_title
    end
    
    def header_subtitle
      Rails.application.config.osucom_layout.header_subtitle
    end
    
    def meta_content(name)
      
    end
    
    def admin_title(default)
      @admin_title && "#{@admin_title} Admin" || default
    end
  end
end