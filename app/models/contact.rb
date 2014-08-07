class Contact < MailForm::Base
	# Using MailForm, good tutorial here: http://rubyonrailshelp.wordpress.com/2014/01/08/rails-4-simple-form-and-mail-form-to-make-contact-form/
	attribute :name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :phone_number
	attribute :subject,      :validate => true
	attribute :body,      :validate => true

	#Declare the e-mail headers. It accepts anything the mail method
	# in ActionMailer accepts.
	def headers
		{
			subject: "[Contato] #{subject}",
  		to: "example@example.com",
			from: %("#{name}" <#{email}>)
		}
	end
end
