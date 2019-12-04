class User < ApplicationRecord

  # has_many :users_snacks, dependent: :destroy
  # has_many :snacks, -> { order(name: :asc) }, through: :users_snacks

  has_many :cart_items, dependent: :destroy
  has_many :items, -> { order(name: :asc) }, through: :cart_items

  has_secure_password # setter for password= && User#authenticate

  validates_presence_of :username
  validates_uniqueness_of :username, :case_sensitive => false

  def serializable_hash(opts)
    super(opts.merge(only: [:id, :username], include: :items))
  end

end
