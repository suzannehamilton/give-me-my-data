class FormController < ApplicationController
  def show
    @org_name = params["organisation_name"]
  end
end
