class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        # LIFO
        @stack[-1]
    end

    # def inspect
    #     @stack.inspect
    # end
end
