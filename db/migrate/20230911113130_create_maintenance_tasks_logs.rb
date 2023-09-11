class CreateMaintenanceTasksLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenance_tasks_logs do |t|
      t.references :run, null: false, foreign_key: {to_table: :maintenance_tasks_runs, on_delete: :cascade}
      t.text :content, null: false, default: [].to_json

      t.timestamps
    end
  end
end
