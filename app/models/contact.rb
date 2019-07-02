class Contact < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  def friendly_updated_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    full_name = "#{first_name}", "#{middle_name}", "#{last_name}"
  end

  def country_code
    japan_code = "+81-" + phone_number
  end
end
