Student.destroy_all
Instructor.destroy_all
Reservation.destroy_all
YogaClass.destroy_all
Student.reset_pk_sequence
Instructor.reset_pk_sequence
Reservation.reset_pk_sequence
YogaClass.reset_pk_sequence

############################ Instructors #############################
sunshine = Instructor.create(name:"Sunshine", weekend?: true)
hummmingbird = Instructor.create(name:"Humminbird", weekend?: true)
aisa = Instructor.create(name: "Aisa", weekend?: false)
ozzy = Instructor.create(name: "Ozzy", weekend?: false)
spirit = Instructor.create(name: "Spirit", weekend?: true)
hope = Instructor.create(name: "Hope", weekend?: false)


########################### Student ######################################## 
elaine = Student.create(name: "Elaine", level: "advanced")
coco = Student.create(name: "Coco", level: "beginner")
pinetree =Student.create(name: "Pinetree", level: "beginner")
willard = Student.create(name: "Willard", level: "intermediate")
confifi = Student.create(name: "Confifi", level: "intermediate")
eva = Student.create(name: "Eva", level: "advanced")
dexter = Student.create(name: "Dexter", level: "intermediate")
jonsnow = Student.create(name: "Jonsnow", level: "beginner")
dulce = Student.create(name: "Dulce", level: "advanced")
isaiah = Student.create(name: "Isaiah", level: "advanced")
crabtree = Student.create(name: "Mr.Crabtree", level: "advanced")
maleficent = Student.create(name: "Maleficent", level: "advanced")
sally = Student.create(name: "Sally", level: "beginner")
ann = Student.create(name: "Ann", level: "advanced")
porsche = Student.create(name:"Porsche", level: "advanced")
joanne = Student.create(name: "Joanne", level: "beginner")
trang = Student.create(name: "Trang", level: "advanced")

#############################  Yogaclass ######################################
hot_yoga1  = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Chelsea")
kid_yoga = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kid Yoga", location: "Upper West Side")
pregnancy_yoga = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy yoga", location: "Tribeca")
vinyasa_yoga = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa yoga", location: "Upper West Side")
bikram_yoga = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram yoga", location: "Chelsea")
hatha_yoga = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha yoga", location:"Tribeca")
goat_yoga = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Goat yoga", location: "Upper East Side")
bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram yoga", location: "Tribeca")
pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy yoga", location: "Upper West Side")

############################# Reservation #########################################

booking1 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 13, 2020 - 3pm")
booking2 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 15, 2020 - 3pm")
booking3 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 12, 2020 - 3pm")
booking4 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 18, 2020 - 3pm")
booking5 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 15, 2020 - 3pm")
booking6 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 17, 2020 - 3pm")
booking7 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id, time: "August 14, 2020 - 3pm")



#6 instructors var = instructor()
#12 students var = student.create()
#20 yogaclasses  var = yogaclass.create(location:, name:, instructor_id:, specialty:)


# # 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
# basil = Plant.create(name: "basil the herb", bought: 20200610, color: "green")
# sylwia = Person.create(name: "Sylwia", free_time: "none", age: 30)
# pp1 = PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection: 1_000_000, favorite?: true)

# # 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
# ## a. by passing an array of hashes:








# ## step 3: invoke creating joiners by passing in an instance of a person
# 10.times do     
#     create_joiners(create_person)
#     ##### ALTERNATIVE:
#     # person = create_person
#     # create_joiners(person)
# end

# indoor = Category.create(name: "indoors")

# Plant.update(category_id: indoor.id)


puts "🔥 🔥 🔥 🔥 "