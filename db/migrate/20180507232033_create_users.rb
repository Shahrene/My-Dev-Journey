class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :github_username
      t.text :summary
      t.text :goals
      t.string :employment_status

      t.timestamps
    end
  end
end
