class MyApiSchema < GraphQL::Schema
  disable_introspection_entry_points unless Rails.env.development?

  # mutation(Types::MutationType)
  query(Types::QueryType)


  rescue_from(ActiveRecord::RecordInvalid) do |exception|
    errors = exception.record.errors.messages.to_json
    GraphQL::ExecutionError.new(errors, extensions: { code: :bad_request })
  end

  rescue_from(ActiveRecord::RecordNotFound) do |exception|
    GraphQL::ExecutionError.new(exception, extensions: { code: :not_found })
  end

  rescue_from(StandardError) do |exception|
    GraphQL::ExecutionError.new(exception, extensions: { code: :internal_server_error })
  end
end
