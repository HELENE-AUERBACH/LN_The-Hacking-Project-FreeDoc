# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#Doctor.destroy_all
#Patient.destroy_all
#Appointment.destroy_all

specialties_array = ["Psychiatrie", "Gérontologie", "Ophtalmologie", "Gastro-entérologie", "Neurologie", "Gynécologie", "Rhumatologie"]
doctors_array = []
patients_array = []
appointments_array = []
n = 3

n.times do
  doctor = Doctor.create!(first_name: Faker::Name.unique.first_name,
                          last_name: Faker::Name.unique.last_name,
                          specialty: specialties_array.sample,
                          zip_code: Faker::Address.unique.zip_code
                         )
  doctors_array << doctor

  patient = Patient.create!(first_name: Faker::Name.unique.first_name,
                            last_name: Faker::Name.unique.last_name
                           )
  patients_array << patient

  appointment = Appointment.create!(date: Faker::Date.between_except(from: 1.year.ago, to: n.days.from_now, excepted: Date.today),
                                    doctor: doctor,
                                    patient: patient
                                   )
  appointments_array << appointment
end

n.times do |index|
  appointment = Appointment.create!(date: Faker::Date.forward(days: n + index + 7),
                                    doctor: doctors_array[(index + n - 1) % n],
                                    patient: patients_array[(index + n) % n]
                                   )
  appointments_array << appointment
end

require 'table_print'

tp.set Doctor, :id, :first_name, :last_name, :specialty, :zip_code
tp.set Patient, :id, :first_name, :last_name
tp.set Appointment, :id, :date, {"doctor.id" => {:width => 6, :display_name => "Dr. Id"}},
                                {"doctor.first_name" => {:width => 20, :display_name => "Dr. Firstname"}},
                                {"doctor.last_name" => {:width => 20, :display_name => "Dr. Lastname"}},
                                {"doctor.specialty" => {:width => 20, :display_name => "Dr. Specialty"}},
                                {"doctor.zip_code" => {:width => 12, :display_name => "Dr. Zip Code"}},
                                {"patient.id" => {:width => 10, :display_name => "Patient Id"}},
                                {"patient.first_name" => {:width => 20, :display_name => "Patient Firstname"}},
                                {"patient.last_name" => {:width => 20, :display_name => "Patient Lastname"}}

puts "#{n} docteurs créés :\n"
tp Doctor.all
puts "\n#{n} patients créés :\n"
tp Patient.all
puts "\n#{appointments_array.length} rendez-vous créés :\n"
tp Appointment.all
puts
