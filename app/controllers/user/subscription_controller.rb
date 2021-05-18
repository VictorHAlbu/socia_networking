class User::SubscriptionController < UserController
  
  def follow
    user_to_follow = User.find_by(id: params[:id])    
    
    Subscription.create(followed_by: current_user, followed: user_to_follow)
    #usuario seguido por current_user - followed usuario seguido vai ser user_to_follow
    
    redirect_to user_potential_to_follow_path
    #metodo seguir
  end

  def unfollow
    user = User.find_by(id: params[:id])

    subscription = Subscription.find_by(followed_by: current_user, followed: user)
    #busca a assinatura de quem está seguindo(usuario atual(followed_by)) e pelo o usuario que está seguindo
  
    subscription.destroy
    redirect_to user_following_path
  end

end