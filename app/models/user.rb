class User < ActiveRecord::Base

  validates :name,     presence: true
  validates :role,     presence: true
  validates :address,  presence: true
  validates :email,    presence: true
  validates :password, presence: true

  class << self
    def localed(kind)
      case kind
      when 'role'
        ['general', 'admin']
      when 'address'
        ['tokyo', 'kanagawa', 'saitama', 'hokaido', 'okinawa']
      end
    end
  end

  def admin?
    @user.role == "admin"
  end

  def general?
    @user.role == "general"
  end
end
