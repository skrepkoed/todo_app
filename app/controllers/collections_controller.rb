class CollectionsController < ApplicationController


def update

if params[:done]=="true"
Todolist.where(id: params[:some_ids].split(',')).find_each do |id|
	
id.toggle(:done).save

end
else
Todolist.where(id: params[:some_ids].split(',')).find_each do |id|
	
id.update(color: params[:todolist][:color])

end
	end
	end

def destroy
Todolist.destroy(params[:some_ids_del].split(','))
end


private
def params_collection

params.require(:collection).permit(  :color, :done, :some_ids)
end


end
