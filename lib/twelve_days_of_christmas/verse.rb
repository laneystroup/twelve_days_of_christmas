module TwelveDaysOfChristmas

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

end
