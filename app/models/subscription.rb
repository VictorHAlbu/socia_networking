class Subscription < ApplicationRecord
   belongs_to :followed, class_name: 'User' #seguido
   belongs_to :followed_by, class_name: 'User'#quem segue
   #duas foreign_key 
end
  