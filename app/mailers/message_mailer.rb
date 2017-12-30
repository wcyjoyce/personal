class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.confirmation.subject
  #
  def confirmation(message)
    @message = message
    mail(
      to: "wcyjoyce.hk@gmail.com",
      subject: "Message From #{@message.email}"
    )
  end
end
