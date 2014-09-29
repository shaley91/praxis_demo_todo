class Tasks
  include Praxis::Controller

  implements V1::ApiResources::Task

  def index(**other_params)
    response.body = V1::MediaTypes::Task::Collection.new(Task.all).render
    response
  end

  def new(**other_params)
    response = Praxis::Responses::Created.new
    response.body = V1::MediaTypes::Task.new(Task.new).render(:extended)
    response
  end

  def create(**other_params)
    task = Task.new(request.payload.attributes)
    task.save!
    response = Praxis::Responses::Created.new
    response.body = V1::MediaTypes::Task.new(task).render(:extended)
    response
  end

  def show(id:)
    response.body = V1::MediaTypes::Task.new(Task.find(id)).render(:extended)
    response
  end

  def delete(id:)
    Task.find(id).destroy
    Praxis::Responses::NoContent.new
  end
end
