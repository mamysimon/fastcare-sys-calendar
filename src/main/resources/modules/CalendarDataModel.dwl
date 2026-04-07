%dw 2.0
import * from dw::core::Strings
output application/json
var appointments = vars.appointments.items filter ($.summary contains vars.patientId)
---
appointments map ((appointment) -> {
	"summary": appointment.summary,
	"description": appointment.description default "No description",
	"dateTime": appointment.start.dateTime as DateTime as String {format: "dd/MM/yyyy HH:mm"},
	"location": appointment.location default "No location",
	"hangoutLink": appointment.hangoutLink default "No link",
	"status": capitalize(appointment.status)
})