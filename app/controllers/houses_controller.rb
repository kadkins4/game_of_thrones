class HousesController < ApplicationController

  def index
    quotes = [ "Never forget what you are for surely the world will not. Make it your strength. Then it can never be your weakness. Armour yourself in it and it will never be used to hurt you.",
      "a mind needs books as a sword needs a whetstone if it is to keep its edge.", "Winter is coming.", "When you play a game of thrones you win or you die.",
      "The man who passes the sentence should swing the sword.", "What is honor compared to a woman\'s love? What is duty against the feel of a newborn son in your arms or the memory of a brother\'s smile? Wind and words. Wind and words. We are only human and the gods have fashioned us for love. That is our great glory, and our great tragedy.",
      "Most men would rather deny a hard truth than face it.", "Death is so terribly final, while life is full of possibilities.",
      "Why is it that when one man builds a wall, the next man immediately needs to know what\'s on the other side?", "When the snows fall and the white winds blow, the lone wolf dies but the pack survives.",
      "And I have a tender spot in my heart for cripples and bastards and broken things.", "What do we say to the Lord of Death?", "My brother has his sword, King Robert has his warhammer and I have my mind...", "Fear is for the winter, my little lord, when the snows fall a hundred feet
      deep and the ice wind comes howling out of the north. Fear is for the long night, when the sun hides its face for years at a time, and little children are born and live and die all in darkness while the direwolves grow gaunt and hungry, and the white walkers move through the woods",
      "Life is not a song, sweetling. Someday you may learn that, to your sorrow.",
      "The things I do for love.", "Summer will end soon enough, and childhood as well.", "Remember this boy. All dwarfs may be bastards yet not all bastards need be dwarfs.",
      "A bruise is a lesson... and each lesson makes us better.", "I wonder if you’re the worst person I’ve ever met. At a certain age it’s hard to recall, but the truly vile do stand out through the years.",
      "Are you here to seduce me? Oh no, please seduce away. It’s been so long. Though I rather think it’s all for naught. What happens when the nonexistent bumps against the decrepit?",
      "I was told you were drunk, impertinent, and thoroughly debauched. You can imagine my disappointment at finding nothing but a browbeaten bookkeeper.",
      "A sword swallower through and through.", "The lords of Westeros are sheep. Are you a sheep? No. You’re a dragon. Be a dragon.", "He really was a cunt, wasn’t he?", "I’ve known a great many clever men. I’ve outlived them all. You know why? I ignored them.",
      "Money buys a man\'s silence for a time. A bolt in the heart buys it forever.", "The lord of light wants his enemies burnt, the drowned god wants them drowned. Why are all the gods such vicious cunts? Where is the god of tits and wine?",
      "Tears aren\'t a woman\'s only weapon. The best one is between your legs", "Explain to me why it is more noble to kill 10,000 men in battle than a dozen at dinner.", "We don\'t get to choose whom we love.",
      "A very small man can cast a very large shadow.", "The more people you love, the weaker you are.", "There is only one god, and his name is death", "You\'re mine and I am yours. And if we die, we die but first we\'ll live.", "A lion doesn\'t concern himself with the opinion of sheep.",
      "Any man who must say, \'I am the king\' is no true king.", "People work together when it suits them. They\'re loyal when it suits them. They love each other when it suits them, and they kill each other when it suits them.", "\'They don\'t hurt little girls in Dorne.\' \'Everywhere in the world they hurt little girls.\'",
      "There are no men like me. There\'s only me.", "Im not questioning your honor, Lord Janos. Im denying its existence.", "Everything\'s better with some wine in the belly.", "\'You\'re a clever man. But you\'re not as clever as you think you are\' \'Still makes me more clever than you.\'", "it doesn\'t matter what we want, once we get it, then we want something else.",
      "I swear to you, sitting on a throne is a thousand times harder than winning one.", "Poison is a woman\'s weapon, men prefer steel."
    ]
    @quote = quotes.sample
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create!(house_params)
    flash[:notice] = "Successfully created #{@house.name}!"

    redirect_to house_path(@house)
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update!(house_params)
    flash[:notice] = "Successfully updated #{@house.name}!"

    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy!

    redirect_to houses_path
  end

private
  def house_params
    params.require(:house).permit(:name, :sigil, :motto, :location, :banner_img)
  end

end
