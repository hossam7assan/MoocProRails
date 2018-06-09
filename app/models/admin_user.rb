class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :image, ImageUploader
  
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
