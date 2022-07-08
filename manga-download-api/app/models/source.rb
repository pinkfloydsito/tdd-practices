class Source < ApplicationRecord
    validates :url, presence: true, format: { with: URI.regexp }
end
