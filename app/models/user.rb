class User < ActiveRecord::Base
has_many :payments 
has_secure_password
def payer?
self.role == 'payer'
end
def admin?
self.role == 'admin'
end
end
