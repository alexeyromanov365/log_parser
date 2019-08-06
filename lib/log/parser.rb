require_relative 'validator'
require_relative 'line'

module Log
  class Parser
    def initialize(data)
      @data = data
    end

    def parse
      @data.map do |line|
        line_object = Log::Line.new(line)
        Log::Validator.new(line_object).validate
        line_object
      end
    end
  end
end
