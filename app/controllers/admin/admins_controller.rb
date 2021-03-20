class Admin::AdminsController < AdminController
    
    def index
        @admins = Admin.order(id: :desc)
    end


end