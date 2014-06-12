class QrcodesController < ApplicationController
	def create
		message = params[:message]
		respond_to do |format|
  			format.png { render :qrcode => message }
	    end
	end
end
