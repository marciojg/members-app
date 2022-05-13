# frozen_string_literal: true

module Types
  class MemberType < Types::BaseObject
    field :id, ID, null: false
    field :group_id, Integer, null: false
    field :name, String
    field :age, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :group, [Types::GroupType]
  end
end
