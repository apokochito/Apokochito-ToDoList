class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    User.all.each do |user|
      UserMailer.weekly_mail(user).deliver
    end
  end
end
