class AddCountryIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :country_id, :int
  end
end
