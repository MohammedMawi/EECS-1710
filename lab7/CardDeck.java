package eecs2030.lab7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/** 
 * Implements a deck of 52 cards, e.g., for a poker game
 * @author 
 *
 */
public class CardDeck implements Iterable <Card>{
	/**
	 * Creates a new deck of cards. The deck will contain 52 distinct cards.
	 * the deck may or may not be shuffled
	 */
	private List<Card> deck;
	
	public CardDeck ()
	{
		deck = new ArrayList<>(52);
		initializeDeck();
	}
	
    private void initializeDeck() {
        for (CardSuit suit : CardSuit.values()) {
            for (CardValue value : CardValue.values()) {
                deck.add(new Card(value, suit));
            }
        }
    }

	/**
	 * Shuffles the deck
	 */
	public void shuffle(){
		Collections.shuffle(deck);
	}

	/**
	 * returns a collection of 5 cards taken from the top of deck.
	 * After the operation those 5 cards should be removed from the deck
	 * and its size is decreased by 5.
	 * @return a collection of 5 cards taken from the top of deck
	 */
	public Collection<Card> draw5Cards (){
		if(deck.size() < 5) {
			throw new IllegalArgumentException("Need 5 cards in deck");
		}
		
		List<Card> draw5 = new ArrayList<>();
		
		for(int i = 0; i < 5; i++) {
			draw5.add(deck.get(0));
			deck.remove(0);
		}
		
		return draw5;
	}

	/**
	 * After the operation this card should be removed from the deck
	 * and its size is decreased by 1.
	 * @return a card from the top of the deck
	 */
	public Card drawCard (){
		if(deck.isEmpty()) {
			throw new IllegalStateException("No cards left in the deck.");
		}
		
		return deck.remove(0);
	}

	/**
	 * @return current deck size, a value between 0 and 52 inclusive
	 */
	public int size(){
		return deck.size();
	}

	@Override
	public String toString (){
		return "CardDeck [size=" + size() + "]";
	}

	@Override
	public Iterator <Card> iterator() {
		return deck.iterator();
	}

}
