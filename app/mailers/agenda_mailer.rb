class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_delete_mail(agenda, user)
    @title = agenda.title
    @email = user.email 
    mail to: @email, subject: I18n.t('views.messages.delete_agenda')
  end
end
