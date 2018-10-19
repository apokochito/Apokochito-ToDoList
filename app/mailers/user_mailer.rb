class UserMailer < ApplicationMailer

  def weekly_mail(user)
    @user = user
    #User.all.each do |user|
    mail(to: user.email, subject: 'Hey dude whats up? You need to complete your tasks!')
   #end
  end
end
