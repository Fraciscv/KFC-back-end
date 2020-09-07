class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def show 
        render json: User.find(params[:id])
    end 

    def login
        @user = User.find_by(name: params[:nameFromFrontEnd])
        if @User
            render json: @User
        else
            render json: {error: "No User with that name exists"}
        end
    end

    def create
        @User = User.new(name: params[:userNameFromFrontEnd])
        if @User.save
            render json: @user, status: :accepted
        else
            render json: {errors: @user.errors.full_messages }, status: :unprocessible_entry
        end
    end

    private

    def user_params
        params.permit(:name, :birthdate)
    end
end
