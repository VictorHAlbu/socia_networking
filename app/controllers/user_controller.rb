class UserController < ApplicationController
    before_action :authenticate_user

    def authenticate_user
        redirect_to new_user_session_path unless current_user #se não tiver current user vai redirecionar para tela de login
    end


end