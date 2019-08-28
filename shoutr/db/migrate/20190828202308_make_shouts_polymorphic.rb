class MakeShoutsPolymorphic < ActiveRecord::Migration[5.2]
  def change
    change_table(:shouts) do |t|
      t.string :content_type
      t.integer :content_id
      t.index [:content_type, :content_id]
    end
    
    Shout.find_each do |shout| 
      text_shout = TextShout.create(body: shout.body)
      shout.update(content_id: text_shout.id, content_type: "TextShout")
    end
  end
end
