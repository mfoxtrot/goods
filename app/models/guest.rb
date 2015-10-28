class Guest < User

  validates :email, :password, presence: true
  validates :passsword, length: { minimum: 6 }

  def can_view_pro_products?
    true
  end

end
