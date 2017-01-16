class ItemsController < ApplicationController
    def index
       @items = current_user.items 
    end
    
    def new
        @item = Item.new
    end
    
    def create
        @item = current_user.items.new(item_params)
        if @item.save
            flash[:notice] = 'Your item is saved.'
            redirect_to root_path
        else
            flash[:alert] = "There's a error, please try again."
            render 'new'
        end
    end
    
    private
    
    def item_params
        params.require(:item).permit(:name)
    end
end
