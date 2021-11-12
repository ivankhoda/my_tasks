class TaskSerializer
  include JSONAPI::Serializer
  attributes :text, :isCompleted, :project_id
end
