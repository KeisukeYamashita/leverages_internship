# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

@room1 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user1 = @room1.users.create(display_name:"thegirlsays42",position:10,password:"h",password_digest:"h")

@room2 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user2 = @room2.users.create(display_name:"komiyama",position:10,password:"h",password_digest:"h")

@room3 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user3 = @room3.users.create(display_name:"kuri55542",position:10,password:"h",password_digest:"h")

@room4 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user4 = @room4.users.create(display_name:"zzzz99999",position:10,password:"h",password_digest:"h")

@room5 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user5 = @room5.users.create(display_name:"mizuki0015",position:10,password:"h",password_digest:"h")

@room6 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user6 = @room6.users.create(display_name:"itsmemario22",position:10,password:"h",password_digest:"h")

@room7 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user7 = @room7.users.create(display_name:"kokokofa",position:10,password:"h",password_digest:"h")

@room8 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user8 = @room8.users.create(display_name:"bobchan156",position:10,password:"h",password_digest:"h")

@room9 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user9 = @room9.users.create(display_name:"bokodea",position:10,password:"h",password_digest:"h")

@room10 = Room.create(name:"バンドのプロモーションサイトの構築",location:"京都")
@user10 = @room10.users.create(display_name:"kokofewa361",position:10,password:"h",password_digest:"h")


