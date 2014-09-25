module V1
  module MediaTypes
    class Task < Praxis::MediaType
      identifier 'application/vnd.acme.post'

      attributes do
        attribute :id, Integer, description: "Post identifier"
        attribute :name, String, description: "Unique Href for this Post"
        attribute :notes, String, description: "Title for the Post"
      end

      view :extended do
        attribute :id
        attribute :name
        attribute :notes
      end

      view :link do
        attribute :id
        attribute :name
      end
    end
  end
end
