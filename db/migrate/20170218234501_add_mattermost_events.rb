class AddMattermostEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :mattermost_events do |t|
      t.belongs_to :journal

      t.timestamps null: false
    end
  end
end
