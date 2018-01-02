class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :message, presence: true

  # after_create :send_confirmation

  private

  def send_confirmation
    MessageMailer.confirmation(self).deliver_now
  end
end
