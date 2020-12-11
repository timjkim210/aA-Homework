require 'byebug'
class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end
    
end

def bfs(starting_node, target_value, visited = [])
    queue = [starting_node]
    until queue.empty?
        current_node = queue.shift
        return nil if visited.include?(current_node)
        if current_node.value == target_value
            return current_node.value
        else
            visited << current_node
            current_node.neighbors.each do |neighbor|
            queue << neighbor
            end
        end
    end
    nil
end

    a = GraphNode.new('a')
    b = GraphNode.new('b')
    c = GraphNode.new('c')
    d = GraphNode.new('d')
    e = GraphNode.new('e')
    f = GraphNode.new('f')
    a.neighbors = [b, c, e]
    c.neighbors = [b, d]
    e.neighbors = [a]
    f.neighbors = [e]

    p bfs(a, 'f')