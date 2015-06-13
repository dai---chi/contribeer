class Issues < ActiveRecord::Base
  after_initialize :set_defaults



  private

  def set_defaults
    self.is_opend = false if self.new_record?
  end
end
