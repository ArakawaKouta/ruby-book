class Gate
    STATIONS = [:umseda, :juso, :mikuni]
    PRICE = [150, 190]

    def initialize(name)
        @name = name
    end

    def enter(ticket)
        ticket.stamp(@name)
    end

    def exit(ticket)
        price = calc_price(ticket)
        price <= ticket.price
        price.class
    end

    def calc_price(ticket)
        from = STATIONS.index(ticket.stamp_at)
        puts STATIONS.index(ticket.stamp_at).to_s + "stamp" 
        #puts ticket.stamp_at
        puts STATIONS.index(@name) 
        #puts @name
        to = STATIONS.index(@name)
        from = 1
        distance = to - from
        PRICE[distance - 1]
    end
end