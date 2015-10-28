class Owner < User

  validates :shop_name, :email, :password, :avatar, presence: true
  validates :passsword, length: { minimum: 8 }

  def can_mark_as_pro?
    true
  end

  def can_add_products?
    true
  end

end
