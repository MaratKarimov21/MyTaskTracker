print 'Creating users... '

user1 = User.create!(email: 'test@test.com', password: '123456', first_name: 'Jake', last_name: 'Howard')
user2 = User.create!(email: 'manager@test.com', password: '123456', first_name: 'June', last_name: 'Black')

puts 'Done'

print 'Creating labels... '
  label1 = Label.create!(color: 'bg-primary', title: 'redundant')
  label2 = Label.create!(color: 'bg-warning text-dark', title: 'feb-22')
  label3 = Label.create!(color: 'bg-light text-dark', title: 'admin')
  label4 = Label.create!(color: 'bg-success', title: 'clients')
puts 'Done'

print 'Creating tasks... '

task1 = Task.create!(title: 'first task do smt', requester: user1, )
task2 = Task.create!(title: 'second task do smt', requester: user1)
task3 = Task.create!(title: 'last task do smt', requester: user1)

TaskUser.create!(user: user1, task: task1)
TaskUser.create!(user: user1, task: task2)
TaskUser.create!(user: user1, task: task3)

TaskLabel.create!(label: label1, task: task1)
TaskLabel.create!(label: label2, task: task1)
TaskLabel.create!(label: label3, task: task1)
TaskLabel.create!(label: label4, task: task1)

TaskLabel.create!(label: label1, task: task2)
TaskLabel.create!(label: label2, task: task2)
TaskLabel.create!(label: label3, task: task2)

TaskLabel.create!(label: label3, task: task3)
TaskLabel.create!(label: label4, task: task3)

puts 'Done'
