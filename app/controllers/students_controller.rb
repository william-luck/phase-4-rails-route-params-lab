class StudentsController < ApplicationController

  def index


    if !!params[:name]
      student = Student.find_by(first_name: params[:name].capitalize)
      if !student
        student = Student.find_by(last_name: params[:name].capitalize)
      end
      render json: student
    else 
      students = Student.all
      render json: students
    end

  end

  def record
    student = Student.find(params[:id])
    render json: student
  end

end
