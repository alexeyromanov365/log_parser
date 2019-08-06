module Log
  class Reader
    def initialize(path)
      @path = path
    end

    def read
      File.readlines(@path)
    end
  end
end
