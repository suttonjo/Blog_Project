class Post < ApplicationRecord
    has_one_attached :image

    # Scopes
    default_scope {order(created_at: :desc)}
end
