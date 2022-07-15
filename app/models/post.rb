class Post < ApplicationRecord
    belongs_to :author
    has_many :comments, dependent: :destroy
    
    mount_uploader :author_post, AuthorPostUploader
end
