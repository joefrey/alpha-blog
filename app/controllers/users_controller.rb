class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # byebug
        # byebug will pause the browser
        # try to type params[:user] to see the object
        # go deeper params[:user][:username] to see what's the username is.
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Welcome to the Aplha Blog #{@user.username}, you have successfully signed up"
            redirect_to articles_path
        else
            render 'new'
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :email, :password)        
    end
end