class Payment < ApplicationRecord
  belongs_to :user

  def self.to_csv
    attributes = %w{id amount amount_date description}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |payment|
        csv << attributes.map{ |attr| payment.send(attr) }
      end
    end
  end

end
