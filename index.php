<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php include('conn.php') ?>
</head>

<body>
    <label for="user">User</label>
    <table id="user" border="1">
        <tr>
            <th>id</th>
            <th>nama lengkap</th>
            <th>email</th>
        </tr>
        <?php
        if ($users->num_rows > 0) {
            // output data of each row
            while ($row = $users->fetch_assoc()) {
        ?>
                <tr>
                    <td><?= $row["id"] ?></td>
                    <td><?= $row["nama_lengkap"] ?></td>
                    <td><?= $row["email"] ?></td>
                </tr>
        <?php
            }
        }
        ?>
    </table>
</body>

</html>