module TwelveDaysOfChristmas

  class Song

    def self.print
      puts self.output
    end

    def self.output
      (1..Gift.list.length).to_a.map { |day| Verse.new(day).output }.join("\n\n")
    end

  end

  class Verse

    def initialize(day)
      @day = day
    end

    def output
      lines.map { |l| Line.new(l, lines).to_human }.join("\n")
    end

    private

    def lines
      [intro_line, gift_lines].flatten
    end

    def intro_line
      "On the #{Number.new(@day).to_ordinal} day of Christmas my true love gave to me"
    end

    def gift_lines
      (1..@day).to_a.reverse.map { |d| Gift.new(d).to_text }
    end

    def included_days
      1..@day
    end

  end

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

  class Gift

    def initialize(day)
      @day = day
    end

    def to_text 
      "#{Number.new(@day).to_article} #{self.class.list[@day-1]}"
    end

    def self.list
      [
        "partridge in a pear tree",
        "turtle doves",
        "french hens",
        "calling birds",
        "golden rings",
        "geese-a-laying",
        "swans-a-swimming",
        "maids-a-milking",
        "ladies dancing",
        "lords-a-leaping",
        "pipers piping",
        "drummers drumming"
      ]
    end

  end

  class Number

    def initialize(number)
      @number = number
    end

    def to_ordinal
      @number.to_s + ordinal_ending
    end

    def to_article
      @number == 1 ? "a" : @number
    end

    private

    def ordinal_ending
      self.class.custom_ordinal_endings[@number] || self.class.default_ordinal_ending
    end

    def self.custom_ordinal_endings
      {
        1 => "st",
        2 => "nd",
        3 => "rd"
      }
    end

    def self.default_ordinal_ending
      "th"
    end

  end

end
