class CreateSuperheros < ActiveRecord::Migration[7.0]
  def change
    create_table :superheros do |t|
      t.string :secret_identity
      t.string :hero_name
      t.integer :power_level
      t.string :power

      t.timestamps
    end
  end
end
