class User < ActiveRecord::Base
  has_many :payments, dependent: :destroy
  has_secure_password

  def admin?
    self.is_admin == '1'
  end

  def self.to_csv
    attributes = %w{id first_name}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

end
