class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at

  # has_many :routines

  # def say_hello
  #   "Hello #{object.email}!"
  # end
end
