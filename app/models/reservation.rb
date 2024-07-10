class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :date_debut, :date_fin, presence: true
  validate :end_date_after_start_date

  def end_date_after_start_date
    return if date_fin.blank? || date_debut.blank?

    if date_fin < date_debut
      errors.add(:date_fin, "doit être après la date de début")
    end
  end
end
