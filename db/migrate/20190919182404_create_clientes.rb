class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :morada
      t.string :concelho
      t.string :telefone
      t.string :nomecontacto
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
