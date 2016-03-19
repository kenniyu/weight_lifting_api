# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: 'ken@stellar.aero', password: 'PooPoo123')
user2 = User.create(email: 'kenniyu@gmail.com', password: 'PooPoo123')

exercise1 = Exercise.create(name: "Barbell Bench Press")
exercise2 = Exercise.create(name: "Leg Press")
exercise3 = Exercise.create(name: "Leg Extension")
exercise4 = Exercise.create(name: "Seated Calf Raise")
exercise5 = Exercise.create(name: "Flat Dumbbell Bench Press")
exercise6 = Exercise.create(name: "Inclined Dumbbell Bench Press")
exercise7 = Exercise.create(name: "Cable Flyes")
exercise8 = Exercise.create(name: "Preacher Curl")
exercise9 = Exercise.create(name: "Hammer Curl")

routine1 = Routine.create(name: "Day A", user: user1)
routine2 = Routine.create(name: "Day B", user: user1)
routine3 = Routine.create(name: "Day C", user: user1)
routine4 = Routine.create(name: "Day X", user: user2)
routine5 = Routine.create(name: "Day Y", user: user2)
routine6 = Routine.create(name: "Day Z", user: user2)

# Each routine has 2 exercises
re1 = RoutineExercise.create(routine: routine1, exercise: exercise1)
re2 = RoutineExercise.create(routine: routine1, exercise: exercise2)
re3 = RoutineExercise.create(routine: routine2, exercise: exercise3)
re4 = RoutineExercise.create(routine: routine2, exercise: exercise4)
re5 = RoutineExercise.create(routine: routine3, exercise: exercise1)
re6 = RoutineExercise.create(routine: routine3, exercise: exercise5)
re7 = RoutineExercise.create(routine: routine4, exercise: exercise6)
re8 = RoutineExercise.create(routine: routine4, exercise: exercise7)
re9 = RoutineExercise.create(routine: routine5, exercise: exercise1)
re10 = RoutineExercise.create(routine: routine5, exercise: exercise7)
re11  = RoutineExercise.create(routine: routine6, exercise: exercise8)
re12  = RoutineExercise.create(routine: routine6, exercise: exercise9)


# routine sessions
rs1 = RoutineSession.create(routine: routine1, completed: true)
rs2 = RoutineSession.create(routine: routine2, completed: false)

# exercise sets
es1 = ExerciseSet.create(exercise: exercise1, routine_session: rs1, weight: 100.0, reps: 7)
es2 = ExerciseSet.create(exercise: exercise1, routine_session: rs1, weight: 100.0, reps: 5)
es3 = ExerciseSet.create(exercise: exercise1, routine_session: rs1, weight: 100.0, reps: 5)
es4 = ExerciseSet.create(exercise: exercise2, routine_session: rs1, weight: 200.0, reps: 7)
es5 = ExerciseSet.create(exercise: exercise2, routine_session: rs1, weight: 200.0, reps: 6)
es6 = ExerciseSet.create(exercise: exercise2, routine_session: rs1, weight: 200.0, reps: 5)

es7 = ExerciseSet.create(exercise: exercise3, routine_session: rs2, weight: 50.0, reps: 7)
es8 = ExerciseSet.create(exercise: exercise3, routine_session: rs2, weight: 50.0, reps: 5)
es9 = ExerciseSet.create(exercise: exercise3, routine_session: rs2, weight: 50.0, reps: 5)
es10 = ExerciseSet.create(exercise: exercise4, routine_session: rs2, weight: 20.0, reps: 9)
