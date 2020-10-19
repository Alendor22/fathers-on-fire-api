class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :summary
      t.string :objective
      t.string :location

      t.timestamps
    end
  end
end
