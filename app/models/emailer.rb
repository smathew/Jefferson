class Emailer < ActionMailer::Base
  def guestbook_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "mail@jcfcu.org"
	from        "web_services@shareone.com"
	subject     "Guestbook has been signed"
	
	body :app => app
  end
  
  def memapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "mail@jcfcu.org, webapps@jcfcu.org"
	from        "web_services@shareone.com"
	subject     "[JCFCU] MEMBERSHIP APPLICATION (online forms)"
	
	body :app => app
  end
  
  def loanapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "lending@jcfcu.org"
	from        "web_services@shareone.com"
	subject     "[JCFCU] Online Loan Application"
	
	body :app => app
  end

end
