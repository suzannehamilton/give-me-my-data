require "sendgrid-ruby"
include SendGrid

namespace :mail do
    desc "Send an email using SendGrid"
    task :send, [:to, :body, :from, :subject] do |t, args|
        args.with_defaults(
            :from => "noreply@givememydata.org",
            :subject => "Another test email",
        )
        from = Email.new(email: args.from)
        to   = Email.new(email: args.to)

        content = SendGrid::Content.new(type: "text/plain", value: args.body)
        mail    = SendGrid::Mail.new(from, args.subject, to, content)
        sg      = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])

        response = sg.client.mail._('send').post(request_body: mail.to_json)

        puts response.inspect
    end
end
