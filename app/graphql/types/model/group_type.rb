# frozen_string_literal: true

module Types
  module Model
    class GroupType < Types::Base::BaseObject
      field :id, ID, null: false
      field :name, String
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
      field :members, [Types::Model::MemberType]
    end
  end
end
