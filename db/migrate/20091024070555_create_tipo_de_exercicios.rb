class CreateTipoDeExercicios < ActiveRecord::Migration
  def self.up
    create_table :tipo_de_exercicios do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_de_exercicios
  end
end
