# encoding: utf-8

module BlackJack
  class Card
    class InvalidCardError < StandardError; end

    attr_reader :name, :value

    def initialize(name)
      @name = name
      case name
      when 'A'
        @value = 1
      when '2'..'10'
        @value = name.to_i
      when 'J', 'Q', 'K'
        @value = 10
      else
        raise InvalidCardError, "Invalid Card Name: #{name.inspect}"
      end
    end
  end
end
