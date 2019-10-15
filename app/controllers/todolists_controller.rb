class TodolistsController < ApplicationController
before_action :list, :set_todolist, only: :index
after_action :set_todolist, only: :create #delete later

def index 



 
end

def new

end
def create
@todolist=Todolist.create(params_todolist)
set_todolist
list
respond_to do |format|

format.js   

    
end


end
def edit
@todolist=Todolist.find(params[:id])
respond_to do |format|

format.js   

    end
end

def update
@todolist=Todolist.find(params[:id]).update(params_todolist)
list
respond_to do |format|

format.js   

    end
end

def destroy


@todolist=Todolist.find(params[:id]).destroy

list
respond_to do |format|               

    format.js
	
  
   
end
end

def color_picker
respond_to do |format|               

    format.js


end
end
private
def params_todolist

params.require(:todolist).permit(:title, :description, :color, :done, :todoitems_attributes =>[:id, :description,  :done,:_destroy])
end



end
