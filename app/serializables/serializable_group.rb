# frozen_string_literal: true

class SerializableGroup < JSONAPI::Serializable::Resource
  type :group

  has_many :member

  attributes :name

  attribute :created_at do
    I18n.l(@object.created_at, format: :timestamp)
  end

  attribute :updated_at do
    I18n.l(@object.updated_at, format: :timestamp)
  end
end
