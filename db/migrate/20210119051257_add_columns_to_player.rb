class AddColumnsToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :fname, :string
    add_column :players, :lname, :string
    add_column :players, :jersey, :integer
  end
end
