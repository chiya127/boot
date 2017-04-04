class User < ActiveRecord::Base
  enum address: { tokyo: 1, kanagawa: 2, saitama: 3, hokkaido: 4, okinawa: 5 }

  validates :name,     presence: true
  #validates :address,  presence: true
  validates :email,    presence: true
  validates :password, presence: true

  class << self
    def localed_addresses
      addresses.keys.map do |s|
        [ApplicationController.helpers.t("address.user.#{s}"), s]
      end
    end
  end
end
