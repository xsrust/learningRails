class ChangeArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :type, :string
  	remove_column :articles, :text
  end
end
