class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :string
      t.references :user, foreign_key: true
      t.references :mythread, foreign_key: true

      t.timestamps
    end
  end
end
