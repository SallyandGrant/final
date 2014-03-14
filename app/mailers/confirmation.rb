class Confirmation < ActionMailer::Base
  default from: "noreply@pintxopop.com"

  def reservation_created(reservation)
    mail(to: "ssimpson2014@kellogg.northwestern.edu",
      subject: 'Reservation was Made')



  end
end
