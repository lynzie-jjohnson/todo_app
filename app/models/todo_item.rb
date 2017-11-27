class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
    comleted_at.blank?
  end
end
