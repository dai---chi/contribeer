class AddTotalPriceToIssue < ActiveRecord::Migration
  def up
    add_column  :issues, :total_price, :float
  end
end
