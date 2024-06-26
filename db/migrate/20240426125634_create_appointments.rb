class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.belongs_to :physician
      t.belongs_to :patient
      t.timestamps
    end
  end
end
