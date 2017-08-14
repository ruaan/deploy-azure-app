json.extract! boardingpass, :id, :passengerName, :origin, :destination, :seat, :gate, :flight, :boardingTime, :boardingDate, :eticket, :ticketClass, :bookingRef, :frequentFlyerNumber, :sequence, :created_at, :updated_at
json.url boardingpass_url(boardingpass, format: :json)
