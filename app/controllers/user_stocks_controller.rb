class UserStocksController < ApplicationController
    def create
        
        stock = Stock.new_lookup(params[:ticker])
        @user_stock = User.create(user: current_user, stock: stock)
    end
end