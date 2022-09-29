class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum rol: [:admin, :vendedor]

  after_initialize do
    if self.new_record?
      self.rol ||= :vendedor
    end
  end
end
