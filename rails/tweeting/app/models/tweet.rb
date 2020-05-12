class Tweet < ApplicationRecord
  # rails g model tweet
  validates(:twitter,
        presence: true,
        uniqueness: true,
        length: { minimum: 3 }
      )
    validates(
        :tweet,
        presence: { message: "must exist" },
        length: { minimum: 20 }
    )
end



