class Pedido < ApplicationRecord
  belongs_to :user
  has_many :details
  has_many :articulos, through: :details
end
