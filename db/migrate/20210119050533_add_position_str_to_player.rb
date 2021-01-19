class AddPositionStrToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :position_str, :string
  end
end
