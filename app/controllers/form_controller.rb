class FormController < ApplicationController
  def show
    @org_name = params["organisation_name"]
  end

  def preview
    @email_body = <<-eos
      To whom it may concern,

      Please send some data to #{params['user_name']} at #{params['user_email']}.

      Personal details:

      Name: #{params['user_name']}
      NHS number: #{params['nhs_number']}
      Date of birth: #{params['date_of_birth']}
      Address: #{params['user_address']}
      Postcode: #{params['user_postcode']}

    eos
  end

  def send_email
    email_content = params[:email_content]
    to = 'givememydata_dummyorg@mailinator.com'
    from = 'noreply@givememydata.org'

    # EmailService.new.send(to, from, 'Request for data', email_content)
  end
end
