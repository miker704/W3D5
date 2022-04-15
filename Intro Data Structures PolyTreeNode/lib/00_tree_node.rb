class PolyTreeNode
    attr_accessor :value,:parent,:children
    def initialize(value)
        @value=value
        @parent = nil
        @children=[]
    end

    def parent=(some_node)
        return @parent=nil if some_node==nil
        return if some_node.children.include?(self)
        if @parent!=nil
            @parent.children.delete(self)
            @parent=nil

        end

        @parent=some_node
        some_node.children.push(self)
    end


    def add_child(node)
        node.parent=(self)
    end

    def remove_child(node)
        raise "thats is not my child!" if !self.children.include?(node)
        node.parent=(nil)

    end
end