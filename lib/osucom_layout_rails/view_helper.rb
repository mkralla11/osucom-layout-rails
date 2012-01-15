module OsucomLayoutRails
  module ViewHelpers
    def title(default)
      @title && "#{@title} | #{default}" || default
    end
  end
end