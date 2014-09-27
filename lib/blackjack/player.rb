module Blackjack
  class Player
    attr_reader :name

    def initialize(name=nil)
      @name = name || "Player"
    end
  end
end
