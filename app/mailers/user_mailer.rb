class UserMailer < ActionMailer::Base
  default from: "Auctions.CSBaker@gmail.com"

  def welcome(user)
    @user = user
    @url = "http://railsme.asuscomm.com/sharks/"
    mail(:to => user.email, :subject => "Welcome to the Shark Research site").deliver
  end
end
