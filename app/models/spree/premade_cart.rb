module Spree
  class PremadeCart < ActiveRecord::Base

    self.table_name = 'spree_premade_carts'

    has_many :premade_cart_variants, class_name: 'Spree::PremadeCartVariant', dependent: :destroy
    has_many :variants, class_name: 'Spree::Variant', through: :premade_cart_variants

    accepts_nested_attributes_for :premade_cart_variants, allow_destroy: true

    validates :name, presence: true
    validates :token, presence: true, uniqueness: true

    before_validation :ensure_token

    private

    def ensure_token
      self.token ||= generate_token
    end

    # I lifted this from `Spree::Order`
    # it would be nice to have this available as a utility method
    def generate_token
      self.token ||= loop do
        random_token = SecureRandom.urlsafe_base64(nil, false)
        break random_token unless self.class.exists?(token: random_token)
      end
    end

  end
end
