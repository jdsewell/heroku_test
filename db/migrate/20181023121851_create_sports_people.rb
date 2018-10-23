class CreateSportsPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :sports_people do |t|
      t.string :name
      t.string :team
      t.string :avatar

      t.timestamps
    end
  end
end
