class AddUserRefToPlot < ActiveRecord::Migration
  def change
    add_reference :plots, :user, index: true
  end
end
