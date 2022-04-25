class ApplicationController < ActionController::API
  include LogToolbox::LogPayload
  include JsonApiToolbox::Paginable
  include JsonApiToolbox::Renderizable
  include JsonApiToolbox::RenderizableExceptions
end
