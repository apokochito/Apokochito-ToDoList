class ItemPdf < Prawn::Document
    def initialize(list)
      super(top_margin: 70)
        @list = list
        list_text
        line_items
    end

    def list_text
        text " Lista:    #{@list.title} "
        text " Description:   #{@list.description} "
        text " "
    end
    
    def line_items
        move_down 20
        table line_list_rows
    end
    
    def line_list_rows
        [["Task's", "Create at: "]] + 
        @list.todo_items.map do |item|
            [item.content, item.created_at.to_s]
        end
    end
end
