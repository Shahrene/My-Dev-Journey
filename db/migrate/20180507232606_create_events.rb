class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.string :event_name
      t.text :description
      t.string :icon_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
