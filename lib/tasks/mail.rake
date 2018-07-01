require "sendgrid-ruby"
require "email_service"

include SendGrid

namespace :mail do
    desc "Send an email using SendGrid"
    task :send, [:to, :body, :from, :subject] do |t, args|
        args.with_defaults(
            :from => "noreply@givememydata.org",
            :subject => "Another test email",
        )
        email_helper = EmailService.new
        puts email_helper.send(args.to, args.from, args.subject, args.body)
    end
end
