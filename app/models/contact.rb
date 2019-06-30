class Contact < ApplicationRecord
  def friendly_updated_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    full_name = first_name + " " + last_name
  end

  def country_code
    japan_code = "+81-" + phone_number
  end
end
