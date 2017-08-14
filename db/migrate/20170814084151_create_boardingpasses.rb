class CreateBoardingpasses < ActiveRecord::Migration[5.1]
  def change
    create_table :boardingpasses do |t|
      t.string :passengerName
      t.string :origin
      t.string :destination
      t.string :seat
      t.string :gate
      t.string :flight
      t.string :boardingTime
      t.string :boardingDate
      t.string :eticket
      t.string :ticketClass
      t.string :bookingRef
      t.string :frequentFlyerNumber
      t.integer :sequence

      t.timestamps
    end
  end
end
