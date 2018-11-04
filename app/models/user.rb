class User < ActiveRecord::Base
  has_many :payments  
  has_secure_password

  def admin?
    self.is_admin == '1'
  end
end
