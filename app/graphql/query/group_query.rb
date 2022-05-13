module Query
  module GroupQuery
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Get all groups
    field :groups, [Types::GroupType, null: true], null: false
    def groups
      Group.includes(:members).all
    end

    field :groupsConnection, Types::GroupType.connection_type, null: false
    def groupsConnection
      Group.includes(:members).all
    end

    # Get a specific group
    field :group, Types::GroupType, null: false do
      argument :id, ID, required: true
    end
    def group(id:)
      Group.find(id)
    end
  end
end
