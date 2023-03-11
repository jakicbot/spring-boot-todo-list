<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>To Do List</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
      table {
        border-collapse: collapse;
      }
      th,
      td {
        border: 1px solid black;
        padding: 5px;
      }

      th {
        background-color: #4caf50;
        color: white;
      }

      tr:nth-child(even) {
        background-color: #f2f2f2;
      }

      tr:hover {
        background-color: #ddd;
      }

      div {
        margin: 10px;
      }

    </style>
  </head>
  <body>
    <h1>To Do List</h1>

    <div>
      <a href="newTask">
        <button>Add New Task</button>
      </a>
  
      <a href="sortByPrioirity">
        <button>Sort By Priority</button>
      </a>
    
    </div>
    <br>

    <table border="2">
      <tr>
        <th>Priority</th>
        <th>Task</th>
        <th>Due Date</th>
      </tr>

      <#list tasks as task>
        <tr>
          <td>${task.priority}</td>
          <td>${task.description}</td>
          <td>${task.date}</td>
          <td>
            <a href="${'tasks/' + task.id}">Done</a>
          </td>
        </tr>
      </#list>
    </table>
    
  </body>
</html>
