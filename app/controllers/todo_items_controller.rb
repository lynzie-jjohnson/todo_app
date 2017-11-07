class TodoItemsController < ApplicationController
    before_action :set_todo_list

    def create
        @todo_list = TodoList.find(params[:todo_list_id])
        redirect_to @todo_list
    end

    def destroy
        @todo_item = @todo_list.todo_items.find(params[:id])
        if @todo_item.destroy
            flash[:success] = "Todo List item was deleted"
        else
            flash[:error] = "Could not be deleted"
        redirect_to @todo_list
        end
    end

    private

    def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
    end

    def todo_item_params
        params[:todo_item].permit(:content)
    end
end
