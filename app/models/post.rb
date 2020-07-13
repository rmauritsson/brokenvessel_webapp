class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  validates_presence_of :title, :body, :user_id, :topic_id
end
