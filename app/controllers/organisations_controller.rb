class OrganisationsController < ApplicationController
  def find
    @organisations = {
      dummy_org_1: "Dummy org 1",
      dummy_org_2: "Dummy org 2",
    }
  end
end
