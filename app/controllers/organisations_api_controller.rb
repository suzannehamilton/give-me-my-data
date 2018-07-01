class OrganisationsApiController < ApplicationController
  def list
    organisations = Organisation.all
    render json: organisations
  end
end
