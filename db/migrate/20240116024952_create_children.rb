# frozen_string_literal: true

class CreateChildren < ActiveRecord::Migration[7.1]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
