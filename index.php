<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php include('conn.php') ?>
    <?php
    $sql = "SELECT * FROM user";
    $users = $conn->query($sql);
    ?>
</head>

<body>
    <h1>User</h1>
    <table id="user" border="1">
        <tr>
            <th>id</th>
            <th>nama lengkap</th>
            <th>email</th>
            <th>password</th>
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
                    <td><?= $row["password"] ?></td>
                </tr>
        <?php
            }
        }
        ?>
    </table>

    <h2>Insert</h2>
    <form action="insert.php" method="post" style="display: table-caption;">
        <label for="nama_lengkap">Nama Lengkap</label>
        <input type="text" name="nama_lengkap">
        <label for="email">Email</label>
        <input type="email" name="email">
        <label for="password">Password</label>
        <input type="password" name="password">
        <button type="submit">Save</button>
    </form>

    <?php
    $sql = "SELECT * FROM user";
    $users = $conn->query($sql);
    ?>
    <h1>Update</h1>
    <form action="update.php" method="post" style="display: table-caption;">
        <label for="id">ID yang mau diubah</label>
        <input type="text" name="id">
        <label for="nama_lengkap">Nama Lengkap</label>
        <input type="text" name="nama_lengkap">
        <label for="email">Email</label>
        <input type="email" name="email">
        <label for="password">Password</label>
        <input type="password" name="password">
        <button type="submit">Save</button>
    </form>
</body>

</html>