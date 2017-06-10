class CouponsController < ApplicationController

  before_action :set_coupon, only: [:show, :edit, :destroy]
  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
  end

  def create
    coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(coupon)
  end

  def edit
  end

  def update
  end

  def destroy
    #code
  end

  private
  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
