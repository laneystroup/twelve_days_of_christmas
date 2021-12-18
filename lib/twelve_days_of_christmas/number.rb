module TwelveDaysOfChristmas

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
