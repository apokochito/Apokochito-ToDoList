class TodoList < ApplicationRecord
  belongs_to :user
  has_many :todo_items

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |items|
      csv << items.attributes.values_at(*column_names)
       end
    end
  end

end
