class AddFastestTimeToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :fastest_time, :integer
  end
end
