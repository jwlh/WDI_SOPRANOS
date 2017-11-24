class SuspectSerializer < ActiveModel::Serializer
  attributes :id, :character
  has_one :question
  has_one :character
end
