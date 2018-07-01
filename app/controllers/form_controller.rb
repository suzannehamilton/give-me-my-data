require "email_service"

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
    email_content = params[:email_content]
    to = 'givememydata_dummyorg@mailinator.com'
    from = 'noreply@givememydata.org'

    EmailService.new.send(to, from, 'Request for data', email_content)
  end
end
