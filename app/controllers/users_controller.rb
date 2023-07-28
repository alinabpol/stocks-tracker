class UsersController < ApplicationController
    def destroy
      user = current_user
      user.destroy
      redirect_to root_path, notice: 'User successfully deleted.'
    end

    def my_portfolio
      @tracked_stocks = current_user.stocks
    end
  end