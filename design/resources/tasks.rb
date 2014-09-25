module V1
  module ApiResources
    class Tasks
      include Praxis::ResourceDefinition

      version '1.0'
      media_type MediaTypes::Task

      action :new do
        routing do
          get '/new'
        end
      end

      action :create do
        routing do
          post ''
        end

        params do
          attribute :name, Attributor::String,
            required: true
          attribute :notes, Attributor::String
        end
      end

      action :show do
        routing do
          get '/:id'
        end

        params do
          attribute :id, Attributor::Integer
        end
      end

      action :index do
        routing do
          get ''
        end
      end

      action :delete do
        routing do
          delete '/:id'
        end

        params do
          attribute :id, Attributor::Integer
        end
      end
    end
  end
end
