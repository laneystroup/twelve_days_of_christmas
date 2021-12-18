module TwelveDaysOfChristmas

  class Song

    def print
      puts output
    end

    def output
      (1..Gift.list.length).to_a.map { |day| Verse.new(day).output }.join("\n\n")
    end

  end

end
