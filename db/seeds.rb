Program.destroy_all

ga = Program.create(name: "General Assembly", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/03/generalassembly-open-graph-w.png", short_description: "Misk Academy, General Assembly, Winter 2019", long_description: "Misk Academy (part of the Misk Foundation) in partnership with General Assembly is launching a bold initiative to build Saudi Arabia’s workforce of the future through robust training in coding, data, design, digital marketing and product management.");
udacity = Program.create(name: "Udacity", img: "https://misk.org.sa/miskacademy/wp-content/uploads/sites/5/2018/08/udacity-w.png", short_description: "Misk Academy, Udacity", long_description: "The initiative aims to build the knowledge and skills needed for a work in the digital age. Udacity offers top of the line learning in technology that is aimed to help learners gain practical learning. Our goal is to have the biggest impact on our youth and the country’s advancement.");
siemens = Program.create(name: "Siemens", img: "https://misk.org.sa/fellowship/wp-content/uploads/sites/7/2018/02/siemens-logo-w.png", short_description: "Misk and Siemens internship", long_description: "The Prince Mohammed Bin Salman Bin Abdulaziz Foundation “MiSK” offers sponsored training opportunities for academically excellent university students in the Kingdom in the fields of engineering, management, and information technology in partnership with many global companies pioneering in those fields");


# Program.destroy_all
# ga = Program.create(name: "GA",img: null,short_description: "short desc",long_description: "long desc");
# udaCity = Program.create(name: "UdaCity",img: null,short_description: "short desc",long_description: "long desc");

Project.destroy_all
proj1 = Project.create(name: "Tourontour", url: "null", description: "agme to to hfdfhdjdhgjdh jjd", language: "Ruby")
proj2 = Project.create(name: "farforfar", url: "null", description: "agme to to go far from fars ", language: "Javascript")
proj3 = Project.create(name: "DesertExplorer", url: "null", description: "a story about fdfhdjfhdsjf ", language: "Javascript")
