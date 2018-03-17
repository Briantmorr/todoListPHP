SELECT td.ID, td.title, td.description, td.due, td.owner,
tu.username as todoOwner
	FROM todoData as td
    JOIN todousers as tu
   	 ON td.owner = tu.ID
    WHERE td.status = 'active'