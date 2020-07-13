class Topic < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates_presence_of :name, :url
end
