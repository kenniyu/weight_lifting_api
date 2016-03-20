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
routine3 = Routine.create(name: "Day C", user: user2)

# Each routine has 2 exercises
re1 = RoutineExercise.create(routine: routine1, exercise: exercise1)
re2 = RoutineExercise.create(routine: routine1, exercise: exercise2)
re3 = RoutineExercise.create(routine: routine2, exercise: exercise3)
re4 = RoutineExercise.create(routine: routine2, exercise: exercise4)
re5 = RoutineExercise.create(routine: routine3, exercise: exercise1)
re6 = RoutineExercise.create(routine: routine3, exercise: exercise5)

# Exercise sets for each routine (targets)
res1 = RoutineExerciseSet.create(routine: routine1, exercise: exercise1, weight: 100.0, reps: 7)
res2 = RoutineExerciseSet.create(routine: routine1, exercise: exercise1, weight: 100.0, reps: 5)
res3 = RoutineExerciseSet.create(routine: routine1, exercise: exercise1, weight: 100.0, reps: 5)
res4 = RoutineExerciseSet.create(routine: routine1, exercise: exercise2, weight: 100.0, reps: 7)
res5 = RoutineExerciseSet.create(routine: routine1, exercise: exercise2, weight: 100.0, reps: 5)
res6 = RoutineExerciseSet.create(routine: routine1, exercise: exercise2, weight: 100.0, reps: 5)

res7 = RoutineExerciseSet.create(routine: routine2, exercise: exercise3, weight: 80.0, reps: 7)
res8 = RoutineExerciseSet.create(routine: routine2, exercise: exercise3, weight: 80.0, reps: 5)
res9 = RoutineExerciseSet.create(routine: routine2, exercise: exercise3, weight: 80.0, reps: 5)
res10 = RoutineExerciseSet.create(routine: routine2, exercise: exercise4, weight: 50.0, reps: 7)
res11 = RoutineExerciseSet.create(routine: routine2, exercise: exercise4, weight: 50.0, reps: 5)
res12 = RoutineExerciseSet.create(routine: routine2, exercise: exercise4, weight: 50.0, reps: 5)

res13 = RoutineExerciseSet.create(routine: routine3, exercise: exercise1, weight: 30.0, reps: 7)
res14 = RoutineExerciseSet.create(routine: routine3, exercise: exercise1, weight: 30.0, reps: 5)
res15 = RoutineExerciseSet.create(routine: routine3, exercise: exercise1, weight: 30.0, reps: 5)
res16 = RoutineExerciseSet.create(routine: routine3, exercise: exercise5, weight: 10.0, reps: 7)
res17 = RoutineExerciseSet.create(routine: routine3, exercise: exercise5, weight: 10.0, reps: 5)
res18 = RoutineExerciseSet.create(routine: routine3, exercise: exercise5, weight: 10.0, reps: 5)

# ==== ongoing sessions ====
# routine sessions
rs1 = RoutineSession.create(routine: routine1, completed: true)
rs2 = RoutineSession.create(routine: routine2, completed: false)

# session exercise sets
rses1 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise1, weight: 100.0, reps: 6)
rses2 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise1, weight: 100.0, reps: 4)
rses3 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise1, weight: 100.0, reps: 3)
rses4 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise2, weight: 100.0, reps: 6)
rses5 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise2, weight: 100.0, reps: 3)
rses6 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise2, weight: 100.0, reps: 2)

rses7 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise3, weight: 80.0, reps: 7)
rses8 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise3, weight: 80.0, reps: 4)
rses9 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise3, weight: 80.0, reps: 3)
rses10 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise4, weight: 50.0, reps: 7)
rses11 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise4, weight: 50.0, reps: 5)
rses12 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise4, weight: 50.0, reps: 4)

rses13 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise1, weight: 30.0, reps: 5)
rses14 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise1, weight: 30.0, reps: 3)
rses15 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise1, weight: 30.0, reps: 2)
rses16 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise5, weight: 10.0, reps: 6)
rses17 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise5, weight: 10.0, reps: 3)
rses18 = RoutineSessionExerciseSet.create(routine_session: rs1, exercise: exercise5, weight: 10.0, reps: 3)

# unfinished routine session
rses19 = RoutineSessionExerciseSet.create(routine_session: rs2, exercise: exercise3, weight: 50.0, reps: 7)
