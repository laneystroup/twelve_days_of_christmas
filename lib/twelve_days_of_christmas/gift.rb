module TwelveDaysOfChristmas

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

end
