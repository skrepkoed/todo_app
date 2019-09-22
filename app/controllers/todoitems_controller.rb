class TodoitemsController < ApplicationController

def new
@todolist
respond_to do |format|               
    format.js
  end 
end
end
