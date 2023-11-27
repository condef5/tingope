class FoodPlace < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, length: {minimum:9, maximum:9}

  def whatsapp_link
    "https://wa.me/51#{phone_number}?text=Quiero pedir ..."
  end
end
