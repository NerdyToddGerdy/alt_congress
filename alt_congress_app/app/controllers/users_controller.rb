class UsersController < ApplicationController
    def index
        users = User.all
        render json: {status: 200, users: users}
    end
    def show
        user = User.find(params[:id])
        render json: {status: 200, user: user}
    end
    def create
        user = User.new(user_params)
        
        if user.save
            render json: user, status: :created, location: user
        else
            render json: user, status: :unprocessable_entity
        end
    end
    private
        def user_params
           params.require(:user).permit(:first_name, :last_name, :email, :address, :State, :district, :gender, :i_fund, :i_join, :i_vote, :verified, :zip, :city)
        end
end