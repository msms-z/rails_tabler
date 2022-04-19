class CreateVerifyCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :verify_codes, id: :uuid do |t|
      t.string :code
      t.string :mobile
      t.boolean :is_success
      t.text :res_json

      t.timestamps
    end
  end
end
