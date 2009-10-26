class CreateExercicios < ActiveRecord::Migration
  def self.up
    create_table :exercicios do |t|
      t.belongs_to :tipo_de_exercicio
      t.datetime :inicio
      t.datetime :fim
      t.integer :frequencia_cardiaca

      t.timestamps
    end
  end

  def self.down
    drop_table :exercicios
  end
end
