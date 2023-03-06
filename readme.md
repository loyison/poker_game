-- Poker Game Notes --

Database: poker_game

Tables: 
	cards_numbers: 13x4 = 54; + joker (wildcard)
		id: int,
		card_number: varchar(255) each suit has 4 cards, also accomodate joker wildcard () 
		suitid: int fk (cards_suits(id))
		card_rank : int(Aces have higher rank) ie 

		card_number = card_rank
			A = 13
			2 = 1
			3 = 2
			4 = 3
			5 = 4
			6 = 5
			7 = 6
			8 = 7
			9 = 8
			10 = 9
			J = 10
			Q = 11
			K = 12
			Joker = 14

	cards_suits: 4
		id: int, 1-5 
			1 - hearts
			2 - clubs
			3 - diamonds
			4 - spade 
			5 - wildcard
		suitname: varchar(255) ie clubs, hearts, diamonds, spade



	code check ie for 5 of a kind

	user1 : selects 
			1 : 1 : 1 
			5 : 2 : 2
			10 : 3 : 3 
			15 : 4 : 4 



sql:
--card_suits--

INSERT INTO `cards_suits` (`suitname`) VALUES ('heart'), ('club'), ('spade'), ('diamond'), ('wildcard')


--cards--

INSERT INTO `cards` (`card_number`, `suit_id`, `card_rank`) VALUES 
('2', '1', '1'), ('2', '2', '1'), ('2', '3', '1'), ('2', '4', '1'),
('3', '1', '2'), ('3', '2', '2'), ('3', '3', '2'), ('3', '4', '2'),
('4', '1', '3'), ('4', '2', '3'), ('4', '3', '3'), ('4', '4', '3'),
('5', '1', '4'), ('5', '2', '4'), ('5', '3', '4'), ('5', '4', '4'),
('5', '1', '4'), ('6', '2', '5'), ('6', '3', '5'), ('6', '4', '5'),
('7', '1', '6'), ('7', '2', '6'), ('7', '3', '6'), ('7', '4', '6'),
('8', '1', '7'), ('8', '2', '7'), ('8', '3', '7'), ('8', '4', '7'),
('9', '1', '8'), ('9', '2', '8'), ('9', '3', '8'), ('9', '4', '8'),
('10', '1', '9'), ('10', '2', '9'), ('10', '3', '9'), ('10', '4', '9'),
('J', '1', '10'), ('J', '2', '10'), ('J', '3', '10'), ('J', '4', '10'),
('Q', '1', '11'), ('Q', '2', '11'), ('Q', '3', '11'), ('Q', '4', '11'),
('K', '1', '12'), ('K', '2', '12'), ('K', '3', '12'), ('K', '4', '12'),
('A', '1', '13'), ('A', '2', '13'), ('A', '3', '13'), ('A', '4', '13'),
('Joker', '5', '14');