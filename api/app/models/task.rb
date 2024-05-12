# == Schema Information
#
# Table name: tasks
#
#  id         :bigint(8)        not null, primary key
#  column_id  :bigint(8)
#  name       :string
#  title      :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ApplicationRecord
  belongs_to :column

  acts_as_list scope: :column

  validates :column, presence: true
  validates :name, presence: true
end
