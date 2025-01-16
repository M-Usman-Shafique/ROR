class EmployeesController < ApplicationController
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
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            redirect_to employees_path, notice: "Employee updated successfully"
        else
            render :edit
        end
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def destroy
        @employee = Employee.find(params[:id])
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
end