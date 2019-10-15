class ApplicationController < ActionController::Base
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
