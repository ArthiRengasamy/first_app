class Story < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true

  default_scope order: 'stories.created_at DESC'

  #Ajax search
  def self.search(search)
    if search
      where('content LIKE ?',"%#{search}%")
    else
      scoped
    end
  end
end
