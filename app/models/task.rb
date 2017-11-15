class Task < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true

  def self.incomplete
    where(done: false)
  end

  def self.complete
    where(done: true)
  end
end
