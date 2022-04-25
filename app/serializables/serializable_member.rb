# frozen_string_literal: true

class SerializableMember < JSONAPI::Serializable::Resource
  type :member

  belongs_to :group, required: true

  attributes :name, :age

  attribute :created_at do
    I18n.l(@object.created_at, format: :timestamp)
  end

  attribute :updated_at do
    I18n.l(@object.updated_at, format: :timestamp)
  end
end
