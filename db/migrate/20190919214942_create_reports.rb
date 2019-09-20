class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.references :clientes, null: false, foreign_key: true
      t.time :horachegada
      t.time :horasaida
      t.boolean :p1
      t.string :p11
      t.boolean :p2
      t.string :p22
      t.boolean :p3
      t.boolean :p4
      t.boolean :p5
      t.boolean :p6
      t.boolean :p7
      t.string :p71
      t.string :p8
      t.string :p9

      t.timestamps
    end
  end
end
