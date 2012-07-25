class CreateMyscaffoldtests < ActiveRecord::Migration
  def change
    create_table :myscaffoldtests do |t|
      t.string :name

      t.timestamps
    end
  end
end
