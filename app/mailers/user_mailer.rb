class UserMailer < ActionMailer::Base
  default from: "rohanraja9@iitkgp.ac.in"

  def welcome_email()
    @url  = 'http://example.com/login'
    delivery_options = { user_name: 'rohanraja9',
                         password: '9.9.1993',
                         address: 'iitkgpmail.iitkgp.ac.in'
                    
                     }


    mail(to: 'rohanraja9@gmail.com', subject: 'Test Mail from Ruby on Rails')
  end


end
