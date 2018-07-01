require "email_service"

class FormController < ApplicationController
  def show
    @org_name = params["organisation_name"]
  end

  def preview
    @email_body = <<-eos
      To whom it may concern,
      #{params['organisation_name']}

      SUBJECT ACCESS REQUEST

      This is a request on behalf of #{params['user_name']} to provide the specified data.

      #{params['user_name']} has requested all medical data.
      Data should be provided electronically by email.

      Personal details:

      Name: #{params['user_name']}
      Email: #{params['user_email']}
      NHS number: #{params['nhs_number']}
      Date of birth: #{params['date_of_birth']}
      Address: #{params['user_address']}
      Postcode: #{params['user_postcode']}


    eos
  end

  def send_email
    email_content = params[:email_content]
    to = 'dummyorganisation@mailinator.com'
    from = 'noreply@givememydata.org'

    # EmailService.new.send(to, from, 'Request for data', email_content)
  end
end
