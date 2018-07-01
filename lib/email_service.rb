require "sendgrid-ruby"
require "base64"

class EmailService
  include SendGrid

  def send(to_email, from_email, subject, body)
    to = Email.new(email:to_email)
    from = Email.new(email: from_email)
    
    image = Base64.strict_encode64(File.read("config/example_id.jpg"))
    image_content = SendGrid::Attachment.new
    image_content.type = "jpeg"
    image_content.content = image
    image_content.filename = "id.jpg"

    content = SendGrid::Content.new(type: "text/html", value: body)
    mail    = SendGrid::Mail.new(from, subject, to, content)
    mail.add_attachment(image_content)

    sg      = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])

    response = sg.client.mail._('send').post(request_body: mail.to_json)

    response.inspect
  end
end
