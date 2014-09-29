class AddCountersToPosts < ActiveRecord::Migration
  def change

  	add_column :posts, :votes_count, :integer
  	add_column :posts, :is_featured, :boolean, default: false



  end
end
