class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Logged in successfully"
            redirect_to user
        else
            flash.notice = "There was an issue with your email/password combination."
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        respond_to do |format|
            format.html { redirect_to root_path, notice: "Logged out." }
            format.json { head :no_content }
        end
    end
end