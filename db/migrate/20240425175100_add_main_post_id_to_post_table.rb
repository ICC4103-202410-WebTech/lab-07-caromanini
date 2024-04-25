class AddMainPostIdToPostTable < ActiveRecord::Migration[7.1]
  def change
    change_table :posts do |t|
      t.references :main_post, foreign_key: {to_table: :posts}
    end
  end

end
