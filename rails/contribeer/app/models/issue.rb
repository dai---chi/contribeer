class Issue < ActiveRecord::Base
  after_initialize :set_defaults
  has_many :payments
  attr_accessor :total_price

  private

  def set_defaults
    self.is_opend = false if self.new_record?
  end
end
