module Authentable
  def method_missing(method, *args, &block)
    # admin_login or buyer_login
    login_method_name = self.class.to_s.downcase.concat("_login")

    if method.to_s.include?(login_method_name)
      login
    else
      raise ArgumentError.new("This Method does not exist")
    end
  end
end

module AdminPermisson
  def edit_users_profile
    puts 'Admin updated all users profile'
  end
end

module BuyerPermission
  def buy
    puts 'Buyer has bought an item'
  end
end

class User
  def initialize(username, password, ip_address)
    @username = username
    @password = password
    @ip_address = ip_address
  end

  def change_password=(new_password)
    password = new_password
  end

  protected

  def login
    puts "User logged in. IP address: #{@ip_address}"
  end
end

class Admin < User
  include AdminPermisson
  include Authentable
end

class Buyer < User
  include BuyerPermission
  include Authentable
end

## execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password = 'new_password'

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password = 'new_password'
