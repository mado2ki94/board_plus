class CreateMythreads < ActiveRecord::Migration[5.2]
  def change
    create_table :mythreads do |t|
      t.string :title
      t.string :string
      t.string :comment
      t.string :string
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
