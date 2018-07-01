require "sendgrid-ruby"
include SendGrid

class EmailService
  def send(to_email, from_email, subject, body)
    to = Email.new(email:to_email)
    from = Email.new(email: from_email)

    content = SendGrid::Content.new(type: "text/plain", value: body)
    mail    = SendGrid::Mail.new(from, subject, to, content)
    sg      = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])

    response = sg.client.mail._('send').post(request_body: mail.to_json)

    response.inspect
  end
end
