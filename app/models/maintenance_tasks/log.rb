module MaintenanceTasks
  class Log < ApplicationRecord
    belongs_to :run, class_name: "MaintenanceTasks::Run", inverse_of: :log

    serialize :content, JSON
  end
end
