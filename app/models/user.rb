class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :task_users, dependent: :destroy
  has_many :tasks, through: :task_users
  has_many :requested_tasks, class_name: "Task", foreign_key: "requester_id",
    dependent: :destroy, inverse_of: :requester
end
