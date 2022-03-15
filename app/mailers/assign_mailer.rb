class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def transfer_right(team, user)
    @team = team
    @user = user

    mail to: @user.email, subject: I18n.t('views.messages.leader_change')
  end
end