class EmployeesController < ApplicationController

def welcome
end

def index
@employee = Employee.all
end

def new 
@employee = Employee.new
end



def edit
@employee = Employee.find(params[:id])
end


def create
@employee = Employee.new(employee_params)

#render json: @employee
  
  if @employee.save
  flash[:notice] = "added new employee details succesfully"
  redirect_to action:"index"
  
  else 
  flash[:notice] = "adding new employee details not success"
  render action: "new"
  
  end
  
end

def update

@employee = Employee.find(params[:id])
if @employee.update_attributes(employee_params)
	flash[:notice]=" Employee details updated successfully"
	redirect_to action:"index"
else
	flash[:notice]=" Employee details not updated "
	render action:"edit"
end
end


def destroy
@employee = Employee.find(params[:id])
@employee.destroy
flash[:notice] = "Details deleted successfully"
redirect_to action:"index"

end


private
def employee_params
params.require(:employee).permit(:name,:age,:gender,:designation)

end

def show
end

end
