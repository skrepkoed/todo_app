class Todolist < ApplicationRecord
has_many :todoitems, :dependent =>:destroy
accepts_nested_attributes_for :todoitems,
:allow_destroy => true
end
