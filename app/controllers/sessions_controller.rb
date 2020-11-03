class SessionsController < ApplicationController
    skip_before_action :verified_user, only: [:new, :create]

    def new
        @users = User.all
        @user = User.new
    end

    def create
        if @user = User.find_by(name: params[:user][:name])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end
    
end
