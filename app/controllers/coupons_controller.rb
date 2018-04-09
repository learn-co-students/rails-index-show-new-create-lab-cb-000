class CouponsController < ApplicationController
  def index
    # @students = Student.all
  end


  def create
      @coupon = Coupon.new
     @coupon.coupon_code = params[:coupon_code]
     @coupon.store = params[:store]
     @coupon.save
     redirect_to coupon_path(@coupon)
    end
end
