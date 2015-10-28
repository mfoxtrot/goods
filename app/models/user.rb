class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products

  def can_mark_as_pro?
    false
  end

  def can_view_shop_name?
    false
  end

  def can_add_products?
    false
  end

  def can_view_pro_products?
    false
  end

end
