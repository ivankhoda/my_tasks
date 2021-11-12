class ProjectSerializer
  include JSONAPI::Serializer
  attributes :title, :tasks
  has_many :tasks
end
