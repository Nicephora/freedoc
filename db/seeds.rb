Patient.destroy_all
Doctor.destroy_all
City.destroy_all
Appointment.destroy_all
Specialty.destroy_all


City.create(name: "Bruxelles")
City.create(name: "Bordeaux")
City.create(name: "Tulle")
City.create(name: "Paris")
City.create(name: "Lyon")

Doctor.create(first_name: "Adolf", last_name: "Zimmer", speciality: "Opticien", zip_code: "34499", city_id: 2)
Doctor.create(first_name: "Einrich", last_name: "Heinz", speciality: "gastroanthérologue?", zip_code: "38000", city_id: 1)
Doctor.create(first_name: "Litz", last_name: "Pool", speciality: "chirurgien", zip_code: "78990", city_id: 4)
Doctor.create(first_name: "Kim", last_name: "Jeong-Hun", speciality: "Kiné", zip_code: "78990", city_id: 3)

Patient.create(first_name:"Nathalie", last_name:"Portgirl", city_id: 2)
Patient.create(first_name:"Donald", last_name:"Drunk", city_id: 1)
Patient.create(first_name:"Franklin", last_name:"Roosevelt", city_id: 3)
Patient.create(first_name:"Peperoni", last_name:"Regina", city_id: 4)


12.times do
 Appointment.create(doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, date: (Faker::Date.between(2.days.ago, 30.days.from_now)), city_id: City.all.sample.id)
end
