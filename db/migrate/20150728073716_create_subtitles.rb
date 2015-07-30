class CreateSubtitles < ActiveRecord::Migration
  def change
    create_table :subtitles do |t|
    	t.references 	:user, index: true
    	t.text :title
    	t.date :submission_date
    	t.text :description
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
