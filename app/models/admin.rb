class Admin < User

  validates :name, :surname, :email, :password, :avatar, :passport_scan, :birthdate, presence: true
  validates :passsword, length: { minimum: 10 }

  def can_mark_as_pro?
    true
  end

end
