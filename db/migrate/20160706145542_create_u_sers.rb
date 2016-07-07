class CreateUSers < ActiveRecord::Migration
  def change
    create_table :u_sers do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
