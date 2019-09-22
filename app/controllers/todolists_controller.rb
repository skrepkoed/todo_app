class TodolistsController < ApplicationController
before_action :four_columns, :set_todolist, only: :index
after_action :set_todolist, only: :create #delete later

def index 



 
end

def new

end
def create
@todolist=Todolist.create(params_todolist)
set_todolist
four_columns
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
four_columns
respond_to do |format|

format.js   

    end
end

def destroy


@todolist=Todolist.find(params[:id]).destroy

four_columns
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

params.require(:todolist).permit(:title, :description, :color, :todoitems_attributes =>[:id, :description,  :done,:_destroy])
end

def four_columns
@todolists=Todolist.all.order( created_at: :desc)
@columns=Hash.new{|hash,key| hash[key]=[]}
@columns['first']
@columns['second']
@columns['third']
@columns['fourth']
until @todolists.empty?
first=@todolists.first(4)

i=0
@columns.each_key do |k|
if i<first.length
@columns[k]<<first[i]
i=i+1
end
end
@todolists=@todolists-first
end
@columns

end
def set_todolist
@todolist=Todolist.new
@todolist.todoitems.build

end

end
