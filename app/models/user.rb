class User < ApplicationRecord

  has_secure_password validations: false #cifrar password al ingresarlo

end
