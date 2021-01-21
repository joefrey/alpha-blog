class AddUserIdToArticles < ActiveRecord::Migration[6.1]
  def change
    # add_column - is a command
    # :articles - is the name of the table
    # :user_id - is the name of the attribute
    # :int - is the type of the attribute in this case integer
    add_column :articles, :user_id, :int
  end
end
