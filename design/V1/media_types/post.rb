module V1
  module MediaTypes
    class Post < Praxis::MediaType
      identifier 'application/vnd.acme.post'

      attributes do
        attribute :id, Integer, description: "Post identifier"
        attribute :href, String, description: "Unique Href for this Post"
        attribute :title, String, description: "Title for the Post"
        attribute :content, String,  description: "Post body contents"
      end

      view :default do
        attribute :id
        attribute :title
        attribute :content
      end

      view :link do
        attribute :href
      end
    end
  end
end
