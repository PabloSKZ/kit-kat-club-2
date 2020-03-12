class UserMailer < ApplicationMailer
  default from: 'no-reply@kit-kat-club-2.herokuapp.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://kit-kat-club-2.herokuapp.com/users/sign_in' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def order_email(user)
    @user = user 
    @cart = []
    user.cart.items.each do |i|
      @cart << i.title
    end
    @url  = 'https://www.latranchee.com/wp-content/uploads/2017/03/cute-cat.jpg' 
    mail(to: @user.email, subject: 'Merci pour votre commande !') 
  end

end
