class CouponsController < ApplicationController

  def index
    @students = Students.all
  end

  def new
    
  end

  def create
    @student = Student.new
    @student.coupon_code = params[:coupon_code]
    @student.store = params[:store]
    @student.save

    redirect_to post_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end
end
