class Contact < ActiveRecord::Base
  validates :name, format: { with: /\A[A-Za-z ]+\z/ }
  validates :phone, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
end
