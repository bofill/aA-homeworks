class UserMailer < ApplicationMailer
    default from: 'cats@example.com'

    def welcome_email(user)
        @user = user
        @url = 'http://localhost:3000/session/new'
        mail(to: @user.username, subject: 'Welcome to the 99 cats site' )
    end
end
