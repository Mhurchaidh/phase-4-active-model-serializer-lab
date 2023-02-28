class PostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags, :content, except: {:id, :timestamps}

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
