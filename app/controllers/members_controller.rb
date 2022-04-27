# frozen_string_literal: true

class MembersController < ApplicationController
  def index
    q = Member.ransack(params[:q])
    result = q.result.includes(:group).paginate(page: params[:page], per_page: per_page)

    render_object(
      result, links: pagination(result), meta: pagination_meta(result)
    )
  end

  def show
    member = Member.find(params.require(:id))

    render_object(member)
  end
end
