class Todoitem < ApplicationRecord
  belongs_to :todolist, optional: true
end
