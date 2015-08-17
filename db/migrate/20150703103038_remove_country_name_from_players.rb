class RemoveCountryNameFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :country_name, :string
  end
end
