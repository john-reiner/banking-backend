class SessionsController < ApplicationController 
    def create
        user = User.find_by(username: params["user"]["username"])
        .try(:authenticate, params["user"]["password"])

        if user 
            session[:user_id] = user.id
            render json: {
                status: :created,
                logged_in: true,
                user: user 
            }
        else
            render json: { status: 401 }
        end 
    end
end 