class Enquiry < ActiveRecord::Base
  attr_accessible :address, :comments, :email, :itemcode, :name, :phone, :pieces

  ITEMCODE_TYPES = ["Product code:0001","Product code:0002","Product_code:0003"]
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :itemcode,  presence: true
  validates :pieces,  presence: true
end
