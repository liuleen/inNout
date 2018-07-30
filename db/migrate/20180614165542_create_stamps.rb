class CreateStamps < ActiveRecord::Migration[5.2]
  def change
    create_table :stamps do |t|
      t.datetime :sign_in
      t.datetime :sign_out
      t.belongs_to :attendee, foreign_key: true

      t.timestamps
    end
  end
end
