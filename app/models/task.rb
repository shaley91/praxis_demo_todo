class Task < ActiveRecord::Base
  # belongs_to :user
  # has_one    :filter_set, :as => :owner_resource, :dependent => :destroy
  # validates :filter_set, :filter_set_is_valid => true
  # has_many   :budget_alert_escalations
  # serialize :additional_email_addresses, Array

  # # ALERT_TYPES = %w(actual_spend forecast_spend)
  # # ALERT_FREQUENCIES = %w(weekly daily monthly)

  # attr_accessible :name, :monthly_budget, :alert_type, :alert_frequency, :additional_email_addresses

  # validates_presence_of :user, :name, :monthly_budget
  # validates_inclusion_of :alert_type, :in => ALERT_TYPES, :message => "%{value} is not a valid alert type"
  # validates_inclusion_of :alert_frequency, :in => ALERT_FREQUENCIES, :message => "%{value} is not a valid alert type frequency"
  # validates :monthly_budget, :numericality => { :greater_than_or_equal_to => 0 }
  # validates :additional_email_addresses, :array_of_email_addresses => true

  # after_initialize :set_defaults

  def set_defaults
    if new_record?
      self.name                 ||= ""
      self.notes                ||= nil
    end
  end
end
