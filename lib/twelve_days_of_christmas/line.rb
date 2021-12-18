module TwelveDaysOfChristmas

  class Line

    def initialize(line, lines)
      @line = line
      @lines = lines
    end

    def to_human
      [prefix, @line].compact.join(" ") + punctuation
    end

    def punctuation
      if first?
        ":"
      elsif last?
        "."
      else
        ","
      end
    end

    def prefix
      "and" if last?
    end

    private

    def first?
      @line == @lines[0]
    end

    def last?
      @line == @lines[-1]
    end

  end

end
