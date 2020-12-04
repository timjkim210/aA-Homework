class Stack
    def initialize(height, value)
        @stack = Array.new(height) {value}
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
      @stack[-1]
    end
end