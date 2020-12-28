class CreateTagPhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_phrases do |t|
      t.string :id_tag
      t.string :id_phrase

      t.timestamps
    end
  end
end
