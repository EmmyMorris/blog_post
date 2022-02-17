class PostSerializer
  include JSONAPI::Serializer
  set_type :posts
  attributes :id, :author, :authorId, :likes, :popularity, :reads, :tags
end
