module TodolistsHelper
def todoitem_setup(todolist)
 if todolist.todoitems.empty? 
 todolist.todoitems.build
 end
todolist
end
end
