class User < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :start, presence: true
  validates :stop, presence: true
  validates :introduction, presence: true, length: { maximum: 500 } 
  
  #終了日が古い場合はフラッシュメッセージを表示
  validate :start_stop_check
  def start_stop_check
    if start.present? && stop.present?
      errors.add(:stop, "の日付を正しく記入してください") unless
      self.start <= self.stop 
    end
  end
end

