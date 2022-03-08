print 'Creating users... '

user1 = User.create!(email: 'test@test.com', password: '123456', first_name: 'Jake', last_name: 'Howard')
user2 = User.create!(email: 'manager@test.com', password: '123456', first_name: 'June', last_name: 'Black')

puts 'Done'

print 'Creating tasks... '

task1 = Task.create!(title: 'first task do smt', requester: user1)
task2 = Task.create!(title: 'second task do smt', requester: user1)
task3 = Task.create!(title: 'last task do smt', requester: user1)

TaskUser.create!(user: user1, task: task1)
TaskUser.create!(user: user1, task: task2)
TaskUser.create!(user: user1, task: task3)

puts 'Done'
