class User < ApplicationRecord
    has_many :articles
    #adding validations
    validates :username, presence: true, 
                         uniqueness: {case_sensitive: false}, 
                         length: {minimum:3, maximum:25}

    #REGEX for email validation
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true,
                         uniqueness: {case_sensitive: false}, 
                         length: {maximum:105},
                         format: {with: VALID_EMAIL_REGEX}

end

#uniqueness: true - should be unique
#uniqueness: {case_sensitive: false} - this tells shoulb be unique and case insensitive
#token key as github password --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