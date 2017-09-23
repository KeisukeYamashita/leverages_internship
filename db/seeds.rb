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
for i in 1..10
	@room1.users.create(display_name:"奥野",position:10)
end

@room2 = Room.create(name:"架空の写真家のポートフォリオ",location:"東京")
for i in 1..10
	@room2.users.create(display_name:"ヤマシタ")
end
