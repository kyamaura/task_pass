class Task < ActiveRecord::Base
  validates :content, {presence: true, length:{maximum:140}}
  validates :compensation, {presence: true, }
  validates :viewing_period, {presence: true, }
end
