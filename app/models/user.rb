class User
  include Mongoid::Document
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation 
  attr_accessor :password

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_hash, type: String
  field :password_salt, type: String

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_confirmation_of :password
  #validates_uniqueness_of :email, on: :create, message: "is already taken."

  #validates :name, length: { in: 3..25 }
  #validates :password, length: { in: 6..96 }, unless: :update

  #validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  before_save :email_to_lowercase
  before_save :encrypt_password

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def email_to_lowercase
    email.downcase!
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
