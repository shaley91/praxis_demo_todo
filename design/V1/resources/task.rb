module V1
  module ApiResources
    class Task
      include Praxis::ResourceDefinition

      version '1.0'
      media_type MediaTypes::Task

      action :index do
        routing do
          get ''
        end

        response :ok
      end

      action :new do
        routing do
          get '/new'
        end

        response :created
      end

      action :create do
        routing do
          post ''
        end

        payload do
          attribute :name, Attributor::String,
            required: true
          attribute :notes, Attributor::String
        end

        response :created
      end

      action :show do
        routing do
          get '/:id'
        end

        # permissions do
        #   # User requires admin and actor
        #   requires 'admin', 'actor'
        #   # OR user requires observer
        #   requires 'observer'
        #   # OR CA level must be greater than 2
        #   requires 'ca_level' greater_than 2
        # end

        # permissions do
        #   requires :admin, :actor, :observer, :ca_level => 2
        # end

        params do
          attribute :id, Attributor::Integer
        end

       response :ok
      end

      action :delete do
        routing do
          delete '/:id'
        end

        params do
          attribute :id, Attributor::Integer
        end

        response :no_content
      end
    end
  end
end
