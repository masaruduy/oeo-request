class Request < ActiveRecord::Base
  belongs_to :user
  validates :description, length: { maximum: 500 }
end
