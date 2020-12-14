class LRUCache
  attr_reader :max_size

    def initialize(max_size)
      @underlying_array = []
      @max_size = max_size
    end

    def count
      @underlying_array.length
    end

    def add(el)
      if @underlying_array.include?(el)
        @underlying_array.delete(el)
        @underlying_array << el
      elsif
        @underlying_array.length < max_size && !@underlying_array.include?(el)
        @underlying_array << el
      else
        @underlying_array.shift
        @underlying_array << el
      end
    end

    def show
      @underlying_array
    end

    private
    # helper methods go here!

end

  johnny_cache = LRUCache.new(4)


  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  p johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})

  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]