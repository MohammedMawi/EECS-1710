package eecs2030.lab7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/**
 * Implements a poker hand containing exactly 5 distinct cards 
 * @author 
 *
 */
public class PokerHand implements Iterable <Card>{
	/**
	 * Creates a new hand from a collection of 5 cards
	 * the hand must contain exactly 5 cards, and they must be distinct
	 * @param hand
	 * @throws IllegalArgumentException if the conditions above a violated
	 */
	private List<Card> hand;
	public PokerHand(Collection<Card> hand) {
		if(hand.size() != 5) {
			throw new IllegalArgumentException("Hand has less than 5 cards");
		}
		
		//check for duplicates
		List<Card> duplicate = new ArrayList<>(hand);
		for(int i = 0; i < hand.size(); i++) {
			for(int j = i+1; j < hand.size(); j++) {
				if(duplicate.get(i).equals(duplicate.get(j))) {
					throw new IllegalArgumentException("Cards must be distinct");
				}
			}
		}
		
		this.hand = new ArrayList<>(hand);
	}

	/**
	 * Creates a new hand from 5 separate card objects
	 * there should be exactly 5 parameters, and they must be distinct
	 * @param hand 5 card objects
	 * @throws IllegalArgumentException if the conditions above a violated
	 */
	public PokerHand(Card... hand) {
		 if (hand.length != 5) {
			 throw new IllegalArgumentException("A poker hand must contain exactly 5 cards");
		 }
		 
		 
		 List<Card> handCards = List.of(hand);
		 
		 for(int i = 0; i < handCards.size(); i++) {
			 for(int j = i+1; j < handCards.size(); j++) {
				 if(handCards.get(i).equals(handCards.get(j))) {
					 throw new IllegalArgumentException("Cards must be distinct");
				 }
			 }
		 }
		 
		 this.hand = handCards;
	}

	/**
	 * @return a list of cards currently held
	 */
	public List <Card> getHand (){
		//TODO
		return new ArrayList<>(hand);
	}

	@Override
	public String toString (){
		//TODO
		return "PokerHand " + hand.toString();
	}

	@Override
	public Iterator <Card> iterator() {
		//TODO
		return hand.iterator();
	}

}
