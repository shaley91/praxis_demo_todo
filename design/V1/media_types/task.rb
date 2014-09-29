module V1
  module MediaTypes
    class Task < Praxis::MediaType
      attributes do
        attribute :id, Integer, description: "Task identifier"
        attribute :name, String, description: "Name of the task"
        attribute :notes, String, description: "Extra notes for the task"
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

      class Collection < Praxis::MediaTypeCollection
        member_type Task

        member_view :default, using: :link
      end
    end
  end
end
