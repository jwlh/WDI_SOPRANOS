class Question < ApplicationRecord
  belongs_to :killer, class_name: "Character", foreign_key: "killer_id"
  belongs_to :victim, class_name: "Character", foreign_key: "victim_id"

  has_many :suspects
end
