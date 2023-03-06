<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Loyiso Poker Game Exercise</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
      <style>
      	.card {
  position: relative;
  display: inline-block;
  width: 172px;
  height: 240px;
  font: 16px 'Trebuchet MS';
  margin: 10px;
  border-radius: 4px;
  background: #fff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.18);
}
.card:before,
.card:after {
  content: attr(value);
  position: absolute;
  width: 12px;
  text-align: center;
  letter-spacing: -2px;
}
.card:before {
  top: 4px;
  left: 4px;
}
.card:after {
  bottom: 4px;
  right: 4px;
  transform: rotate(180deg);
}
</style>
  </head>
  <body>
  	<div class="container">
  		
  	
<?php 

require_once 'dbcon.php';

// get cards from table join with cards_suit table where c.id = cs.suitid
$cards = "SELECT c.id, c.card_number, c.card_rank, cs.suitname FROM cards c join cards_suits cs ON cs.id = c.suit_id";
//return results of the above query
$result = $conn->query($cards);

// ading the cards as checkboxes, will allow to select up to the limit by using jquery
echo "<form id='pokercards'>";
if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		echo '<input type="checkbox" name="card" class="card card_suit-'.$row['suitname'].'" value='.$row["card_number"].' data-suit='.$row['suitname'].' data-cardrank='.$row['card_rank'].'>';
	}
}
echo '<div class="row"><input type="submit" value="Submit" id="submit" disable></div>';
echo "</form>";
?>
	</div>
	<script>
		$(document).ready(function(){
			// pass cards as data here to check below
			let cards = [];
			$(".card").change(function (){
				if($('.card:checkbox:checked').length > 5){
					$(this).prop('checked', false);
					alert("You can only select 5 checkboxes.");
				} else {
					cards.push({
						'value' : $(this).val(),
						'suitname' : $(this).data('suit'),
						'rank' : $(this).data('cardrank'),
					})
					return cards;
				}
			});
			// check the hand on submission 
			$( "#pokercards" ).submit(function( event ) {
				let cards = [];
				event.preventDefault();
				var output = cards.reduce((acc, curr) => {
				  if (!acc.some(({ suitname }) => suitname == curr.suitname)) {
				    acc.push({ suitname: curr.suitname, count: 0, rank: curr.rank, value: curr.value });
				  } else {
				    acc.find(({ suitname }) => suitname == curr.suitname).count++;
				  }
				  
				  return acc;
				}, []);

				// get the values return from cards here  fix finish below home
				// $cards = 
				console.log(output);
				// console.log('suitcount : ' + $suitcount + ' suitname : ' + $suitname + ' value : '  + $value + ' rank' + $rank);
				// if count counted card_number ie A-joker
					// add and count the 5 cards retruned from above
					// $cards = output[0].suitname + ' ' + output[2].suitname + ' ' +  output[3].suitname + ' ' + output[4].suitname + ' ' + output[5].suitname;

				//console.log($cards);
				// if(acc.value < 1) {
				// 	console.log('alot of numbers');
				// }
				// $suitcount = output[0].count;
				// $suitname = output[0].suitname;
				// $value = output[1].value;
				// $rank = output[1].rank;

				// console.log('suitcount : ' + $suitcount + ' suitname : ' + $suitname + ' value : '  + $value + ' rank' + $rank);


				//console.log(output[0].count); // suitname
				//console.log(output);
			 
			});
			
			
		});
	</script>
 </body>
</html>