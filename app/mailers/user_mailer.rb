class UserMailer < ApplicationMailer

    def reserva_email(reserva)
        @reserva_info = reserva

        mail(subject: 'Confirmação de reserva Saracutacus Hostel', to: "eliomf.rj@gmail.com; #{@reserva_info.user.email}", from: 'alan@saracutacus.site') do |format|
          format.text
          format.html
        end
        
    end
    
end
