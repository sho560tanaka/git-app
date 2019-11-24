class CreateArthicles < ActiveRecord::Migration[5.2]
  def change
    create_table :arthicles do |t|
      t.string :title
      t.string :author
      t.text :text

      t.timestamps
    end
  end
end
