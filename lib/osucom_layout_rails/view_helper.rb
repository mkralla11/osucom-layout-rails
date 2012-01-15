module OsucomLayoutRails
  module ViewHelper
    def title(default)
      @title && "#{@title} | #{default}" || default
    end
  end
end