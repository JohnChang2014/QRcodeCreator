require 'spec_helper'

describe QrcodesController do
	describe "POST 'create'" do 
		it "returns http success" do
			post 'create'
			expect(response).to be_success
		end
		
		it "renders QR code image in the response" do
			post 'create'
			@qrcode = QRcode.new 'hello'
			expect(response).to 
		end
	end
end
