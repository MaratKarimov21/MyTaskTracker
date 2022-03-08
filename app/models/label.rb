class Label < ApplicationRecord
  AVALIABLE_COLORS = [
    'bg-primary',
    'bg-secondary',
    'bg-success',
    'bg-danger',
    'bg-warning text-dark',
    'bg-info text-dark',
    'bg-light text-dark',
    'bg-dark'
  ]

  has_many :task_labels, dependent: :destroy
  has_many :tasks, through: :task_labels
end
