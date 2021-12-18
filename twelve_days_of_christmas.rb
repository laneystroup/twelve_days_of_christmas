module TwelveDaysOfChristmas

  class Song

    def self.print
      puts self.output
    end

    def self.output
      (1..Gift.list.length).to_a.map { |day| Verse.new(day).output }.join("\n\n") + "."
    end

  end

  class Verse

    def initialize(day)
      @day = day
    end

    def output
      [
        lines[0..-2].join(",\n"), 
        lines[-1]
      ].join(",\nand ")
    end

    private

    def lines
      [intro_line, other_lines].flatten
    end

    def intro_line
      "On the #{Number.new(@day).to_ordinal} day of Christmas my true love gave to me"
    end

    def other_lines
      (1..@day).to_a.reverse.map { |d| Gift.new(d).to_text }
    end

    def included_days
      1..@day
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
      @number.to_s + (
        case @number
        when 1
          "st"
        when 2
          "nd"
        when 3
          "rd"
        else
          "th"
        end
      )
    end

    def to_article
      @number == 1 ? "a" : @number
    end

  end

end