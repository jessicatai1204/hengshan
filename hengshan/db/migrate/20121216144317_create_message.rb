class CreateMessage < ActiveRecord::Migration
  def up
    create_table 'message' do |t|
      t.string 'name'
      t.text 'content'
      t.datetime 'release_date'
      t.timestamps
    end
  end
 
  def down
    drop_table 'message' # deletes the whole table and all its data!
  end
end
