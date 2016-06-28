class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.test :description
      t.string :company
      t.string :url

      t.timestamps null: false
    end
  end
end
