class Post < ApplicationRecord
    # validates :content, {presence: true, length: {maximum: 140}}
    validates :content, presence: true
    validates :user_id, {presence: true}
    
    def user
        return User.find_by(id: self.user_id)
    end
  
end
