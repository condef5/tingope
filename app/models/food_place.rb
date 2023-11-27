class FoodPlace < ApplicationRecord
  def whatsapp_link
    "https://wa.me/#{phone_number}?text=Quiero pedir ..."
  end
end
