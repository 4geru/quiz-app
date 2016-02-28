class ChangeDefaultCalumContests < ActiveRecord::Migration
  def change
    change_column_default :contests, :result1, 0
  end
end
