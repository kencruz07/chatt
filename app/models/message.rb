# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  channel_id :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_messages_on_channel_id  (channel_id)
#  index_messages_on_user_id     (user_id)
#

class Message < ApplicationRecord

  belongs_to :channel
  belongs_to :user

end
