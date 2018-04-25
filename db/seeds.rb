# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Preference.destroy_all
Trainer.destroy_all
Runner.destroy_all
RunnerPref.destroy_all
Area.destroy_all

puts "Test #{Faker::Name.first_name}"

areas = ["Camden", "Bristol", "Liverpool"]
prefs = ["GroupRun", "Mission", "CoachRun"]
status = ["never_run", "regular", "lapsed"]
active = ["true", "false"]

puts "creating preferences"


Area.create(name: "Camden")
Area.create(name: "Bristol")
Area.create(name: "Liverpool")
Preference.create(preference: "GroupRun")
Preference.create(preference: "Mission")
Preference.create(preference: "CoachRun")

puts "preferences created"

puts "creating trainers"

Area.all.each do |area|
 trainer = Trainer.new(name: Faker::Name.first_name)
 trainer.area = area
 trainer.save!
end

allTrainers = Trainer.all
allTrainers
puts "trainers created"

puts "creating runners and adding to trainers"

allTrainers.each do |t|
  area = Area.all.sample
  puts "hello"
  5.times do
    date = Faker::Date.between(-3.days.from_now, -50.days.from_now)
    runner = Runner.new({
      name: Faker::Name.first_name,
      status: status.sample,
      active: active.sample,
      last_activity: date
      })
    runner.trainer = t
    runner.area = t.area
    runner.save!
    rand(1..2).times do
      preferences = Preference.all.reject { |pref| runner.preferences.include?(pref) }
      puts preferences
      pref = RunnerPref.new
      pref.runner = runner
      pref.preference = preferences.sample
      pref.save!
    end
  end
end
puts "runners created and trainers assigned and preferences added"


