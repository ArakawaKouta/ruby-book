class Ticket
    attr_reader :price, :stamp_at

    def initialize(price)
        @price = price
    end

    def stamp(name)
        @stamp_at = name
    end
end