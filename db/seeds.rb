# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


charles = User.create(username: 'cwooley',password: 'admin', email: "cwooley89@gmail.com", profile_image_url:"https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/19667823_10155576185331579_5655974443043484940_o.jpg?oh=28b6b7d3f442ad931a113f394b2cb120&oe=5A5D6C79"  )


google = Company.create(name:"Google", active:true, user_id: charles.id)

application = Interaction.create(kind:"Application", status:"Applied for google hope I get the job!", company_id: google.id )

sundar = Contact.create(name: "Sundar Pichai", email:"ceo@gmail.com", position:"CEO")

tesla = Company.create(name:"Tesla", active:true, user_id: charles.id)

t_app = Interaction.create(kind:"Application", status:"Applied for Tesla, want to join Musk's squad", company_id: tesla.id)
follow_up = Interaction.create(kind:"follow_up", status:"Talked with Musk, he wants me to be CTO", company_id: tesla.id)
