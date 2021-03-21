class Admin::AdminsController < AdminController
    
    def index
        @admins = Admin.order(id: :desc)
    end

    def new
        @admin = Admin.new        
    end

    def edit
        @admin = Admin.find(params[:id])
    end


    def create
        @admin = Admin.new(form_params) 
        if @admin.save
            redirect_to admin_admins_path
        else
           render :new 
        end

    end


    private
    def form_params
        params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end

end