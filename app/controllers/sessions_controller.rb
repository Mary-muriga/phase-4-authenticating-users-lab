class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        if user 
        session[:user_id] = user_id
        render json: user
        else
            render json: {error: "This user does not exist"}, status: :not_found
        end
    end
     
    def destroy
        session.delete :user_id
        head :no_content
    end

end
