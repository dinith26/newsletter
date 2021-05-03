class User < ApplicationRecord
    validates :email, presence: true
    validates :preferences, presence: true
    # validate :check_email


    private def check_email
        uri = URI "https://emailvalidation.abstractapi.com/v1/?api_key=d3c361c1421f485baefe058da46c715e&email=dinith26@gmail.com"

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER

        request =  Net::HTTP::Get.new(uri)

        response = http.request(request)
        if ! response['is_valid_format']['value'] || ! response['is_mx_found']['value'] || ! response['is_smtp_valid']['value']
            errors.add :email, 'is not valid'
        end
    end
end
