# frozen_string_literal: true

module Types
  module Model
    class MemberType < Types::Base::BaseObject
      field :id, ID, null: false
      field :group_id, Integer, null: false
      field :name, String
      field :age, Integer
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
      field :group, Types::Model::GroupType
    end
  end
end
