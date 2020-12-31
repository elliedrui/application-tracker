class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.date :applied_date
      t.string :status
      t.boolean :had_interview?
      t.references :open_position, null: false, foreign_key: true
      t.string :notes
      t.string :url

      t.timestamps
    end
  end
end
