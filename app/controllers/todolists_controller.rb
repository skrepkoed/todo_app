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

def four_columns(todolists)

@columns=Hash.new{|hash,key| hash[key]=[]}
columns_number=['first','second','third','fourth']


columns_number.each do |i|
	@columns[i]
end
until todolists.empty?
first=todolists.first(4)

i=0
@columns.each_key do |k|
if i<first.length
@columns[k]<<first[i]
i=i+1
end
end
todolists=todolists-first
end
@columns

end
def list
	@list=[]
@todolists=Todolist.where(done: false).order( created_at: :desc)
@todolists_pined=Todolist.where(done: true).order( created_at: :desc)
@list<<four_columns(@todolists)
@list<<four_columns(@todolists_pined)
@list
	end
def set_todolist
@todolist=Todolist.new
@todolist.todoitems.build

end

end
