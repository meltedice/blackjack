# encoding: utf-8

module BlackJack
  class Card
    attr_reader :name, :value

    def initialize(name)
      @name = name
      case name
      when 'A'
        @value = 1
      when '1'..'9'
        @value = name.to_i
      when 'J', 'Q', 'K'
        @value = 10
      end
    end
  end
end
