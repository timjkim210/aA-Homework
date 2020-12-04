class Map

    def initialize
        @map = []
    end

    def set(key, value)
        @map.each_with_index do |sub_arr, i|
            if sub_arr[0] == key
                @map[i] = [key, value]
                return
            end
        end

        @map << [key, value]
    end

    def get(key)
        @map.each {|sub_arr| return sub_arr if sub_arr[0] == key}
    end

    def delete(key)
        @map.each {|sub_arr| @map.delete(sub_arr) if sub_arr[0] == key}
    end

    def show
        @map
    end

end