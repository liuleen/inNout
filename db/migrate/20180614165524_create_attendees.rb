class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :login
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
