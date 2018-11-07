class User < ActiveRecord::Base
  has_many :payments, dependent: :destroy
  has_secure_password

  def admin?
    self.is_admin == '1'
  end
end
