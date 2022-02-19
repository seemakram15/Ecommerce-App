module ApplicationHelper
    def ecommerce_price_format price
        number_to_currency(price.to_f, precision: 2, :unit => "$")
    end
end
