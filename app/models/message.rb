class Message < ActiveRecord::Base
  belongs_to :board
  belongs_to :user
  mount_uploader :image, MessageImageUploader

  validates_presence_of :content
end
