require 'spec_helper'

describe QrcodesController do
	describe "POST 'create'" do
		it "returns http success" do
			post 'create'
			expect(response).to be_success
		end

		it "renders QR code image in the response" do
			post 'create'
			cqrcode = RQRCode::CQRCode.new
			options = { :info => "hello" }
			data    = cqrcode.generateQRcode(options, :png)
			expect(response.body).to eq data
		end
	end
end
