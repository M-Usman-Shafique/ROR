class EmployeesController < ApplicationController    
    before_action :set_employee, only: [:edit, :update, :show, :destroy]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    # def create
    #     @employee = Employee.new(
    #         username: params[:employee][:username],
    #         age: params[:employee][:age],
    #         email: params[:employee][:email],
    #         password: params[:employee][:password],
    #     )
    #     if @employee.save
    #         redirect_to employees_path
    #     else
    #         render :new
    #     end
    # end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path, notice: "Employee created successfully"
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @employee.update(employee_params)
            redirect_to employees_path, notice: "Employee updated successfully"
        else
            render :edit
        end
    end

    def show
    end

    def destroy
        if @employee.destroy
            redirect_to employees_path, notice: "Employee deleted successfully"
        else
            redirect_to employees_path, alert: "Unable to delete employee"
        end
    end

    private

    def employee_params
        # params.require(:employee).permit!
        params.require(:employee).permit(:username, :age, :email, :password)
    end

    def set_employee
        @employee = Employee.find(params[:id])
        rescue ActiveRecord::RecordNotFound => error
            redirect_to employees_path, alert: error
    end
end