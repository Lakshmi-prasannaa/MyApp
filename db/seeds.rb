# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 0.upto(10) do |i|
#    Post.create(:name => "User #{i}" , :content => "A neat interface to create new posts! 
#    	You can easily create, edit and delete blog posts now. What other parts of the blogging engine 
#    	can you think of? Maybe you want to allow your visitors to comment on blog posts? 
#    	You might also want to create an admin interface for your blog. Right now, everyone 
#    	visiting your blog can edit and delete your posts, which is not desirable. 
#    	Another thing we might want to take care of is validation of the data we sa#{i}")
# end

      
    # Country.create :name => "abc1"
    # Country.create :name => "abc2"
    # Country.create :name => "abc3"
    # Country.create :name => "abc4"
    # Country.create :name => "abc5"
 	
 # 	player = ["player1","player2","player3","player4"]
 #    player.each do|name|
	# 	Player.create(:name => name)
	# puts "#{name} inserted"
	# end

	#Player.create(:name => "Dravid" , :country_name => "")

	 # country = ["Newzealand","Africa"]
  #     country.each do|name|
	 # 	Country.create(:name => name)
	 #  puts "#{name} inserted"
	 #  end
	 # players = ["dhoni","kohli"]
	 # players.each do |player|
	 # 	Country.first.players.create(:name => player)
	 # 	puts "#{player} inserted to india"
	 # end

	 
	 Player.find_by(:name =>"kohli").update_attributes(:country_id => "17")
