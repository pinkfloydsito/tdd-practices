class CreateSources < ActiveRecord::Migration[6.1]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
