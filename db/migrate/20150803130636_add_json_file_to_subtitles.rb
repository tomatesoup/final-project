class AddJsonFileToSubtitles < ActiveRecord::Migration
  def change
    add_column :subtitles, :json_file, :string
  end
end
