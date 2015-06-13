class Payment < ActiveRecord::Base
  after_initialize :set_defaults
  belongs_to :issue

  def set_defaults
    self.is_completed = false if self.new_record?
  end
end
