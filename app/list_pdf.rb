class ListPdf < Praw::Document

  def initialize(todo_items)
    super(top_margin: 70)
    @todo_items = todo_items
    #text "#{@todo_items.title}" size: 24, style: :bold
    #text "#{@todo_items.description}", size: 15
    line_items
  end

  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.header = true
    end
  end

  def line_item_rows
    [["Title", "Description: "]] +
      @todo_items.map do |list|
      [list.title, list.description]
    end
  end
  [list.title, list.description]
end
