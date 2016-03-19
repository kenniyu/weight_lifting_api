class RoutineSessionSerializer < ActiveModel::Serializer
  attributes :id, :completed, :created_at, :updated_at
end
