class User::SubscriptionController < UserController
  
  def follow
    user_to_follow = User.find_by(id: params[:id])    
    
    Subscription.create(followed_by: current_user, followed: user_to_follow)
    #usuario seguido por current_user - followed usuario seguido vai ser user_to_follow
    
    redirect_to user_potential_to_follow_path
    #metodo seguir
  end

end