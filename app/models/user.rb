class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many	:meetings,	dependent:	:destroy

  before_create do |user|
    user.confirmation_token = SecureRandom.urlsafe_base64
  end
  
  def confirm!
    return if confirmed?   
    self.confirmed_at =Time.current
    self.confirmation_token =''
    save!
  end
  
  def confirmed?
    confirmed_at.present?
  end  

  scope :confirmed, -> {where.not(confirmed_at: nil)}

  def self.authenticate(email, password)
    user =confirmed.find_by(email: email).try(:authenticate, password)
  end  

end
