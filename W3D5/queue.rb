class Queue
    def initialize(length, value)
        @queue = Array.new(length) {value}
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
      @queue[-1]
    end

end