require_relative './node'

class LinkedList
    attr_accessor :head
    def initialize
        @head = nil
    end

    def prepend(node)
        if @head == nil
            @head = node
        else
            x = @head
            @head = node
            @head.next_node = x
        end
    end
        
    def append(node)
        if @head == nil
            @head = node
        else
            last = @head
            while last.next_node
                last = last.next_node
            end
            last.next_node = node
        end
    end

    def delete_head
        @head && @head = @head.next_node
    end

    def delete_tail
        if @head && @head.next_node
            last = @head
            while last.next_node.next_node
                last = last.next_node
            end
            last.next_node = nil
        elsif @head
            @head = nil
        end
    end

    def add_after(index, node)
        target = @head
       (index).times do
        if target.next_node
            target = target.next_node
        end
        end
        old_node = target.next_node
        target.next_node = node
        node.next_node = old_node
    end

    def search(value)
        node = @head
        while node do
            return node if node.data == value 
            node = node.next_node
        end
        count
    end

end
