#  Get input for game selection

# puts  "Welcome to Lotto Buddy"
# puts  "You tell me which game you want to play"
# puts  "and I will pick the numbers for you!"

# puts "Enter 1 for Pick 3"
# puts "Enter 2 for Pick 4"
# puts "Enter 3 for Show Me Cash"

# game_choice = gets.chomp.to_i



puts "    ************************************************"
puts "    *           Welcome to Lotto Buddy             *"
puts "    *   You tell me which game you want to play    *"
puts "    *    and I will pick the numbers for you!      *"
puts "    ***********************************************"

puts "    *     *     *     *     *     *     *     *    *"
puts "    **     *     *     *   *     *     *     *    **"
puts "    * *     *     *     * *     *     *     *    * *"
puts "    * *     *     *     * *     *     *     *    * *"
puts "    **     *     *     *   *     *     *     *    **"
puts "    *     *     *     *     *     *     *     *    *"

r = 0

 while r <= 1

  puts "     ************************************************"
  puts "     *             Enter 1 for Pick 3               *"
  puts "     *             Enter 2 for Pick 4               *"
  puts "     *           Enter 3 for Show Me Cash           *"
  puts "     ************************************************"
  game_choice = gets.chomp.to_i
  puts "***********************************************************",

  while game_choice > 3
    puts "You must enter 1, 2 or 3!"
    game_choice = gets.chomp.to_i
  end

  class Game
    def self.pick_3
      a = rand(0..9).to_s
      b = rand(0..9).to_s
      c = rand(0..9).to_s
      print " Your suggested numbers to play for Pick 3 are:  "
      puts a + "  " + b + "  " + c
      self.again
    end

    def self.pick_4
      a = rand(0..9).to_s
      b = rand(0..9).to_s
      c = rand(0..9).to_s
      d = rand(0..9).to_s    
      print " Your suggested numbers to play for Pick 4 are:  "
      puts a +  "  " + b + "  " + c + "  " + d
      self.again     
    end

    def self.show_me_cash
      array = (1..39).to_a
      x = array.sample(5)
      print "  Your suggested numbers to play are: " 
      print x.join(', ') 
      puts "\n"
      self.again
    end

    def self.again
      puts "\n"
      puts "***********************************************************", "\n"
      puts "\n"
      puts "***********************************************************"
      puts "*    Do you need numbers for a different game?   y or n?  *"
      puts "***********************************************************"
      select = gets.chomp.upcase
      until select == "Y" || select == "N"
        puts "You must enter y or n!"
        select = gets.chomp.upcase
      end

      if select == "Y" 
        puts "         *****    Which Game This Time?    *****"
      elsif select =="N"
       self.byebye
      end

    end
    def self.byebye
      puts "***********************************************************"
        puts "*     *     *     *     *     *     *     *    *     *    *"
        puts "*   ***************************************************   *"
        puts "*   Thank you for letting us help you pick your numbers!  *"
        puts "*   ***************************************************   *"
        puts "*     *     *     *     *     *     *     *    *     *    *"
        puts "***********************************************************"
        exit
    end

  end

  case game_choice
  when 1
    Game.pick_3
    
  when 2
    Game.pick_4
  when 3
    Game.show_me_cash
  when 4
    Game.again
  else
    puts "please pick 1, 2, or 3!"
  end
 end