class SubscribersMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscribers_mailer.new_posts.subject
  #
  def new_posts
    @posts = params[:posts]
    @subscriber = params[:subscriber]
    mail to: @subscriber[:email]
  end
end
