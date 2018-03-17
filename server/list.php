<!-- {
    "success": true,
    "data": [{
		"title": "review emails",
		"description": "review feedback on  my emails",
		"due": "3/18",
		"id": 1
	}, {
		"title": "do react protoypes",
		"description": "do my two react component: functional components, and class components(stopwatch)also do bonus challenge",
		"due": "3/18",
		"id": 4
	}]
}   -->

<?php
require_once('mysqlConnect.php');
$query =  "SELECT td.ID, td.title, td.description, td.due, td.owner,
tu.username as todoOwner
	FROM todoData as td
    JOIN todousers as tu
   	 ON td.owner = tu.ID
    WHERE td.status = 'active'";

 $result = mysqli_query($conn, $query);
$output = [
    'success'=> false,
    'error' => [],
    'data' => []
];
if($result){
    if(mysqli_num_rows($result)> 0){
        while($row = mysqli_fetch_assoc($result)){
            $output['data'][] = $row;
            console.log('hello');
        }
    }
    else{
        $output['errors'][] = 'NO Data available';
    }
    $output['success'] = true;
}
else{
    $output['errors'][] = 'Error in database query';
}

$json_output = json_encode($output);
print($json_output);
?>