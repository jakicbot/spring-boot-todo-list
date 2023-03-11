<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Task</title>
    </style>
</head>

<body>
    <h1>Add New Task</h1>
    <form action="saveTask" method="post">
        <table>
            <tr>
                <td><label>Description</label></td>
                <td><input type="text" name="description" /></td>
            </tr>
            <tr>
                <td><label>Priority</label></td>
                <td><input type="number" name="priority" /></td>
            </tr>
            <tr>
                <td><label>Date</label></td>
                <td><input type="date" name="date" /></td>
            </tr>
            <tr colspan="2">
                <td><input type="submit" value="Save" /></td>
            </tr>
        </table>
    </form>
</body>

</html>