class CouponController
    
    def index
          if params[:store]
            @coupon = Coupon.where('store LIKE ?', "%#{params[:store]}%")
          else
            @coupon = Coupon.all
          end
    end




private 
    def coupon_params
  params.require(:coupon).permit(:store, :coupon_code)
    end
    

  
end