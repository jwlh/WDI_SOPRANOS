class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :description, :victim_id, :killer_id, :video, :suspects

  has_many :suspects

  has_one :killer
  has_one :victim
end
