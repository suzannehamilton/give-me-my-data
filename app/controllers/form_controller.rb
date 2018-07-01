class FormController < ApplicationController
  def show
    @org_name = params["organisation_name"]
  end

  def preview
    @email_body = <<-eos
      <p>To whom it may concern,</p>

      <p>Please send some data to #{params['user_name']} at #{params['user_email']}.</p>
    eos
  end

  def send_email

  end
end
