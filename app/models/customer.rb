class Customer < ActiveRecord::Base
  def full_name(sama)
    full_name = family_name + given_name + sama
    return full_name
  end
end
