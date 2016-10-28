# == Schema Information
#
# Table name: chatrooms
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Chatroom < ApplicationRecord

  has_many :messages, :dependent => :destroy
  has_many :users, :through => :messages
  
end
