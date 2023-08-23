package eecs2030.lab7;

/**
 * This class implements a playing card with one of 52 possible values.
 * @author 
 */
public class Card {
	/**
	 * Creates a new card with the specified Value (Rank) and Suit
	 * @param cardValue rank
	 * @param suit card suit
	 */
	private CardValue cardValue;
	private CardSuit suit;
	
	public Card (CardValue cardValue, CardSuit suit){
		this.cardValue = cardValue;
		this.suit = suit;
	}

	/**
	 * @return card value (rank)
	 */
	public CardValue getCardValue(){
		return this.cardValue;
	}

	/**
	 * @return card suit
	 */
	public CardSuit getSuit(){
		return this.suit;
	}

	@Override
	public String toString(){
		return cardValue + " of " + suit;
	}
}
