class UserMailer < ApplicationMailer

    def reserva_email(reserva)
        @reserva_info = reserva

        mail(subject: 'Confirmação de reserva Saracutacus Hostel', to: "eliomf.rj@gmail.com; #{@reserva_info.user.email}", from: 'alan@saracutacus.site') do |format|
          format.text
          format.html
        end
        
    end

    def signup_email(usuario)
      @usuario = usuario
      @confirmation_link= confirmation_url({token: @usuario.confirmation_token})

      mail(subject: 'Cadastro Saracutacus Hostel', to: "eliomf.rj@gmail.com; #{@usuario.email}", from: 'alan@saracutacus.site') do |format|
        #format.text
        format.html
      end

    end  
    
end
