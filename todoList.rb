class TodoList

  attr_accessor :list

    def initialize(list)
        @list = list 
    end
    def get_items
        p list
    end

    def add_item(item)
        list << item
    end

    def delete_item(item)
        list.delete(item)
    end

     def get_item(x)
        list[x]
    end

end