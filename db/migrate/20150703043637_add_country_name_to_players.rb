class AddCountryNameToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :country_name, :string
  end
end
