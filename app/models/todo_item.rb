class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
   !completed_at.blank?
  end

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |list|
      csv << list.attributes.values_at(*column_names)
      end
    end
  end
end
