class Meal < ActiveRecord::Base

	def count_total

		cnt = 0

		Choice.all.each do |c|

			meals = c.get_meals

			meals.each do |m|

				if m.id == id
					cnt = cnt + 1
				end
			end

		end


		Meal.find(id).update({:enrolled_no_of_students => cnt})

		return cnt

	end

end


class MyMailer < ActionMailer::Base
  def test_email
    @recipients = "rohanraja9@gmail.com"
    @from = "must_be_same_as_smpt_account_login@gmail.com"
    @subject = "test from the Rails Console"
    @body = "This is a test email"
  end
end


ActionMailer::Base.smtp_settings={
  :address              => "iitkgpmail.iitkgp.ac.in",
  :port                 => 587,
  :domail               => "iitkgp.ac.in",
  :user_name            => "rohanraja9",
  :password             => "9.9.1993",
  :authentication       => "plain"  ,
  :enable_starttls_auto => true
}