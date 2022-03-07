require "test_helper"

class TaskUserTest < ActiveSupport::TestCase
  belongs_to :user
  belongs_to :task

  validates :task_id, uniqueness: { scope: :user_id }
end
