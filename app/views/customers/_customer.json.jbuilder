json.extract! customer, :id, :name, :company, :cnpj, :ie, :email, :phone, :mobile, :address, :neighborhood, :city, :state, :zipcode, :created_at, :updated_at
json.url customer_url(customer, format: :json)
