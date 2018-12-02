##Program
Program.destroy_all
ga = Program.create(name: "General Assembly", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/07/GA-websiteslider-03.jpg?id=403",icon: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/03/generalassembly-open-graph-wt-300x200.png", short_description: "Misk Academy, General Assembly, Winter 2019", long_description: "Misk Academy (part of the Misk Foundation) in partnership with General Assembly is launching a bold initiative to build Saudi Arabia’s workforce of the future through robust training in coding, data, design, digital marketing and product management.")
udacity = Program.create(name: "Udacity", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/08/Full-Stack-Web-Developer-Website-Udacity-06.png",icon: "https://sa.udacity.com/assets/iridium/images/core/header/udacity-wordmark.svg",short_description: "Misk Academy, Udacity", long_description: "The initiative aims to build the knowledge and skills needed for a work in the digital age. Udacity offers top of the line learning in technology that is aimed to help learners gain practical learning. Our goal is to have the biggest impact on our youth and the country’s advancement.")
siemens = Program.create(name: "Siemens", img: "https://misk.org.sa/fellowship/wp-content/uploads/sites/7/2018/02/SIEMENS-website-slider-without-logo-04.png?id=2457",icon: "https://misk.org.sa/fellowship/wp-content/uploads/sites/7/2018/02/SIEMENS-logo-05-300x65.png", short_description: "Misk and Siemens internship", long_description: "The Prince Mohammed Bin Salman Bin Abdulaziz Foundation “MiSK” offers sponsored training opportunities for academically excellent university students in the Kingdom in the fields of engineering, management, and information technology in partnership with many global companies pioneering in those fields")
# ga = Program.create(name: "GA",img: null,short_description: "short desc",long_description: "long desc");
# udaCity = Program.create(name: "UdaCity",img: null,short_description: "short desc",long_description: "long desc");

##Courses
Course.destroy_all
wdi = ga.courses.create(name: "Web Development Immersive", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/09/p-6.png", short_description: "Full-time course for career changers", long_description: "In this 12-week course, students become junior-level web developers by building rails applications, developing their own ideas into functional web applications, creating a portfolio of their work, and embarking on the career path of a web developer. This course will give aspiring Ruby on Rails developers the confidence to build projects from start to finish at a professional level. The focus of this course is learning to program in Ruby and creating Rails web applications. However, WDI as a whole focuses on teaching students how to be professional full-stack web developers capable of building a scalable product with a team of developers. Therefore, in addition to teaching Rails, this course also includes lessons on computer science, JavaScript, command line basics, Git, GitHub, and database schemas.", duration: "12 Weeks")
ds = ga.courses.create(name: "Data Science Immersive", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/05/p-2.png", short_description: "Full-time course for career changers", long_description: "In this 12-week, full-time course students analyze massive data sets, and predict what happens next through predictive modeling and pattern recognition. Students create a polished portfolio of work that showcases their ability to create machine-learned insights in a way that is impactful to key stakeholders.", duration: "12 Weeks")
ux = ga.courses.create(name: "User Experience Design Immersive", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/05/p-2.png", short_description: "Full-time course for career changers", long_description: "A User Experience Designer is able to think outside the realm of what’s “possible” in order to create experiences that address the needs of customers in a way that brings them joy and delight. This requires a great deal of empathy, imagination, and skill", duration: "10 Weeks")

##udacity Courses
fullstackdeveloper = udacity.courses.create(name: "fullstackdeveloper", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/09/p-6.png", short_description: "Become a Professional Full Stack Developer", long_description: "In this program, you’ll prepare for a job as a Full Stack Web Developer, and learn to create websites, and complex server-side web applications that use powerful relational databases to persistently store data.", duration: "4 Months", program_id: "??")
becomeiosdeveloper = udacity.courses.create(name: "Become an iOS Developer", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/09/p-6.png", short_description: "Master the Swift programming language, and create a portfolio of iOS apps for iPhone and iPad to showcase your skills!", long_description: "This Nanodegree program will prepare you to publish your first iOS app, whether you’re already a developer or relatively new to programming.", duration: "7 months", program_id: "??")
becomeblockchaindeveloper = udacity.courses.create(name: "Become a Blockchain Developer", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/09/p-6.png", short_description: "Demand for blockchain developers is skyrocketing. In this program, you'll work with the Bitcoin and Ethereum protocols, build projects for real-world application, and gain the essential skills for a career in this dynamic space.", long_description: "This program was built in collaboration with blockchain developers to ensure you learn the right skills necessary to succeed. Demand is skyrocketing and excitement is running high, but it’s important to see past the headlines to learn what it really takes to be a qualified blockchain developer. This program prioritizes mastering job-ready skills with a hands-on approach.", duration: "2 Three-Month Terms", program_id: "??")
##siemens Courses
electricalengineering = siemens.courses.create(name: "Electrical Engineering", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/05/p-2.png", short_description: "Misk /Siemens internship", long_description: "The Prince Mohammed Bin Salman Bin Abdulaziz Foundation “MiSK” offers sponsored training opportunities for academically excellent university students in the Kingdom in the fields of engineering, management, and information technology in partnership with many global companies pioneering in those fields.", duration: " 10 weeks", program_id: "??")
mechanicalengineering = siemens.courses.create(name: "Mechanical Engineering", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/05/p-2.png", short_description: "Misk /Siemens internship", long_description: "The Prince Mohammed Bin Salman Bin Abdulaziz Foundation “MiSK” offers sponsored training opportunities for academically excellent university students in the Kingdom in the fields of engineering, management, and information technology in partnership with many global companies pioneering in those fields.", duration: " 10 weeks", program_id: "??")
industrialengineering = siemens.courses.create(name: "Industrial Engineering", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/05/p-2.png", short_description: "Misk /Siemens internship", long_description: "The Prince Mohammed Bin Salman Bin Abdulaziz Foundation “MiSK” offers sponsored training opportunities for academically excellent university students in the Kingdom in the fields of engineering, management, and information technology in partnership with many global companies pioneering in those fields.", duration: " 10 weeks", program_id: "??")

Student.destroy_all
imgage_path = "https://www.apicius.es/wp-content/uploads/2012/07/IMG-20120714-009211.jpg"
sami = fullstackdeveloper.students.create(f_name: "sami", l_name: "aldahlawi", gender: "male", email: "email@email.com", mobile: "0501231234", img: imgage_path, bio: "bio !!")
mansour = becomeiosdeveloper.students.create(f_name: "masour", l_name: "alsqian", gender: "male", email: "email@email.com", mobile: "0501231234", img: imgage_path, bio: "bio !!")
sultan = becomeblockchaindeveloper.students.create(f_name: "sultan", l_name: "alsamaani", gender: "male", email: "email@email.com", mobile: "0501231234", img: imgage_path, bio: "bio !!")

##Project
Project.destroy_all

proj1 = sami.projects.create(name: "Tourontour", url: "null", description: "agme to to hfdfhdjdhgjdh jjd", language: "Ruby")
proj2 = sami.projects.create(name: "farforfar", url: "null", description: "agme to to go far from fars ", language: "Javascript")
proj3 = sami.projects.create(name: "DesertExplorer", url: "null", description: "a story about fdfhdjfhdsjf ", language: "Javascript")
proj4 = mansour.projects.create(name: "webstudent", url: "null", description: "agme to to hfdfhdjdhgjdh jjd", language: "Ruby")
proj5 = mansour.projects.create(name: "games", url: "null", description: "agme to to go far from fars ", language: "Javascript")
proj6 = sultan.projects.create(name: "tac tac to", url: "https://github.com/wh0-1-am/project0Tic-Tac-Toe", description: "a story about fdfhdjfhdsjf ", language: "Javascript")

##Tags
Tag.destroy_all
ui = Tag.create(name: "UI")
ux = Tag.create(name: "UX")
wd = Tag.create(name: "Web Development")
md = Tag.create(name: "Mobile Development")

#link student with tag
sami.tags << Tag.find_by(name: "UI")
sami.tags << Tag.find_by(name: "UX")
mansour.tags << Tag.find_by(name: "Web Development")
sultan.tags << Tag.find_by(name: "Mobile Development")
