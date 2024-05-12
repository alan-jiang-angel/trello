# == Schema Information
#
# Table name: columns
#
#  id         :bigint(8)        not null, primary key
#  board_id   :bigint(8)
#  name       :string
#  title      :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ColumnSerializer < ActiveModel::Serializer
  attributes(*Column.attribute_names.map(&:to_sym))

  has_many :tasks, if: :nested?

  def nested?
    @instance_options[:nested]
  end
end
