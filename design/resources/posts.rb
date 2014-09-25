module V1
  module ApiResources
    class Posts
      include Praxis::ResourceDefinition

      version '1.0'
      media_type MediaTypes::Post

      action :show do
        routing do
          get '/:id'
        end

        params do
          attribute :id, Attributor::Integer,
            required: true,
            min: 0
          attribute :allow_deleted, Attributor::Boolean,
            default: false,
            description: "Allow returning deleted Posts"
        end

        response :ok
      end

      action :create do
        routing do
          post ''
        end

        payload do
          attribute :title, required: true
          attribute :content
        end
      end
    end
  end
end
