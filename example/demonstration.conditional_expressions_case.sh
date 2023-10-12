#!/bin/bash
# demonstrate conditional expressions - case

PS3="Choose a flower which you like:"
select flower in Sunflower Tulip Orchid Carnation Lily Peony NoneOfAbove
do
	case $flower in
		Sunflower) echo "Flower meanings: Sunflower signifies pure thoughts. It symbolizes adoration and dedication. It is symbolic of dedicated love.";;
		Tulip) echo "Flower meanings: Tulip signifies a declaration of love. It also symbolizes fame and perfect love.";;
		Orchid) echo "Flower meanings: Orchid symbolizes refinement, thoughtfulness and mature charm. It also symbolizes proud and glorious femininity.";;
		Carnation) echo "Flower meanings: Carnation symbolizes pride and beauty. A pink carnation symbolizes the love of a woman or a mother.";;
		Lily) echo "Flower meanings: Lily symbolizes purity and refined beauty. White lily symbolizes modesty and virginity.";;
		Peony) echo "Flower meanings: Peony symbolizes bashfulness and compassion. It symbolizes a happy life, happy marriage, good health and prosperity.";;
		NoneOfAbove) echo "Ooh... So sad. :(";;
		*) echo "You press the wrong key!"
			exit;;
	esac
done

exit 0
