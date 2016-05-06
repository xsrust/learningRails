class ReservedKeywordsSuck < ActiveRecord::Migration
  def change
  	#add_column :articles, :category, :string
  	add_column :contents, :category, :string
  	remove_column :articles, :type
  	remove_column :contents, :type
  end
end
