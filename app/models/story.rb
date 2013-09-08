class Story < ActiveRecord::Base
  attr_accessible :content, :user_id , :password


  belongs_to :user
  validates :content, presence: true

end
