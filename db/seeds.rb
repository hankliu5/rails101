# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Hello World!"
puts "This seed will create an account, 20 groups for that account and 30 posts for each group automatically."

create_account = User.create([email: 'liu19901124@gmail.com', password: '12345678', name: "Hank"])

create_groups = for i in 1..20 do
  Group.create!([title: "Group no.#{i}", description: "The no.#{i} forum made by seed", user_id: "1"])
  GroupUser.create(group_id: i, user_id: 1)
  for k in 1..30 do
    Post.create!([group_id: "#{i}", content: "The no.#{k} post made by seed", user_id: "1"])
  end
end
