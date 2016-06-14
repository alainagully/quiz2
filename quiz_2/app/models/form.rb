class Form < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true
  validates :department, presence: true
  validates :comment, presence: true
end
