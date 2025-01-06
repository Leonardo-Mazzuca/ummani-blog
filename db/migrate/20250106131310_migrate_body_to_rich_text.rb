class MigrateBodyToRichText < ActiveRecord::Migration[6.0]
  def up
    Post.find_each do |post|
      ActionText::RichText.create!(
        record_type: "Post",
        record_id: post.id,
        name: "body",
        body: post.read_attribute(:body) # Lê o texto original da coluna
      )
    end

    # Opcional: Remova a coluna original de texto simples
    remove_column :posts, :body
  end

  def down
    add_column :posts, :body, :rich_text

    Post.find_each do |post|
      post.update!(body: post.body)
    end
  end
end
