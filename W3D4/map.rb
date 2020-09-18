class Map
    def initialize
        @map = []
    end

    def set(key, value)
        if !self.get_key(key)
            @map << [key, value]
        else
            idx = get_index(key)
            @map[idx] = [key, value]
        end
    end

    def get_index(key)
        @map.each { |pair| return @map.index(pair) if pair[0] == key}
    end

    def get_key(key)
        @map.each { |pair| return pair[1] if pair[0] == key}
        nil
    end

    def delete_key(key)
        @map.delete_at(get_index(key))
    end

    def show
        @map.each {|pair| puts "#{pair[0]} => #{pair[1]}"}
    end

end
