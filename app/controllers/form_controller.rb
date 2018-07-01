class FormController < ApplicationController
  def show
    @org_name = params["organisation_name"]
  end

  def preview
    @email_body = <<-eos
      To whom it may concern,

      Please send some data to #{params['user_email']}.
    eos
  end

  def send_email

  end
end
