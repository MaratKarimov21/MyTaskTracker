class Blocker < ApplicationRecord
  belongs_to :blocked, class_name: "Task"
  belongs_to :blocker, class_name: "Task"
end
