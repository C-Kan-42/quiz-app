class DropPokemonsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :pokemons
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
