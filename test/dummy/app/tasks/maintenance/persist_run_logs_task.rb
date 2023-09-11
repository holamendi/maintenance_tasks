# frozen_string_literal: true

module Maintenance
  class PersistRunLogsTask < MaintenanceTasks::Task
    def collection
      [1, 2, 3]
    end

    def process(number)
      log("number: #{number}")
    end
  end
end
