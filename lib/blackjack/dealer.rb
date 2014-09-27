module Blackjack
  class Dealer
    attr_reader :name

    def initialize(name=nil)
      @name = name || "Dealer"
    end
  end
end
