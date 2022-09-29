class Articulo < ApplicationRecord
  belongs_to :marca
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :details
  has_many :pedidos, through: :details
  has_one_attached :fotos
end
