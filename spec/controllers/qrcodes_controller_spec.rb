require 'spec_helper'

describe QrcodesController do
	describe "POST 'create'" do
		context 'with parameters of message and format' do
			it "returns HTTP status 200" do
				post 'create', message: 'hello', format: 'png'
				expect(response.status).to eq(200)
			end
			
			it "returns image/png in the content-type of header" do
				post 'create', message: 'hello', format: 'png'
				expect(response.header["Content-Type"]).to include 'image/png'
			end
		end
	end
end
