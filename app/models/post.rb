class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :account

    # Scopes
    default_scope {order(created_at: :desc)}
end
