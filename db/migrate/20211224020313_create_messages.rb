class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, nill: false, foreign_key: true
      t.references :room, nill: false, foreign_key: true
      t.timestamps
    end
  end
end
