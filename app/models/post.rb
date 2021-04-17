class Post < ApplicationRecord
  # X17126991 - Craig Smith
  belongs_to :user # relationship to user
  # Db query making posts in order
  scope :most_recent, -> { order(id: :desc)}

  # Method for pushing date ('%-b %-d, %y') formatting date
  # putting variable inside string
  def display_day_published
    "Published : #{created_at.strftime('%-b %-d, %Y')}"
  end

# displays user email on posts
  def user_name_published
    "Written by: #{user.email}"
  end
end
