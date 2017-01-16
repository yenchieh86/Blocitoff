class ItemsController < ApplicationController
    def new
        @item = Item.new
    end
    
    def create
        @item = Item.new(item_params)
        @item.user = current_user
        if @item.save
            flash[:notice] = 'Your item is saved.'
            redirect_to users_show_path
        else
            flash[:alert] = "There's a error, please try again."
            redirect_to users_show_path
        end
    end
    
    private
    
    def item_params
        params.require(:item).permit(:name)
    end
end
