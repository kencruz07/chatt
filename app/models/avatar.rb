# == Schema Information
#
# Table name: avatars
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  x_pos      :string
#  y_pos      :string
#  sprite_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_avatars_on_user_id  (user_id)
#

class Avatar < ApplicationRecord

  belongs_to :user
  
end
