class TodoList

  attr_accessor :list

    def initialize(list)
        @list = list 
    end
    def get_items
        p list
    end
end