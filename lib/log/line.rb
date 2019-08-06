# frozen_string_literal: true

module Log
  class Line
    attr_reader :url, :ip

    def initialize(line)
      @url, @ip = data(line)
    end

    def data(line)
      line.split(' ')
    end
  end
end
